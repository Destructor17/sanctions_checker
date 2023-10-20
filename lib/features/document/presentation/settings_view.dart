import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanctions_checker/features/settings/domain/services/endpoint_service.dart';
import 'package:sanctions_checker/features/settings/presentation/bloc/document_fetch_bloc.f.dart';
import 'package:sanctions_checker/features/settings/presentation/bloc/endpoint_bloc.f.dart';
import 'package:sanctions_checker/l10n/context_extension.dart';
import 'package:sanctions_checker/services/service_locator.dart';
import 'package:ui_kit/ui_kit.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => SettingsViewState();
}

class SettingsViewState extends State<SettingsView> {
  final controller = TextEditingController();
  final endpointBloc = EndpointBloc();
  final documentFetchBloc = DocumentFetchBloc();
  String? previousAddres;

  @override
  void initState() {
    controller.addListener(onEndpointChanged);
    super.initState();
    sl.get<EndpointService>().getEndpoint().then(
          (value) => setState(() {
            controller.text = value;
          }),
        );
  }

  @override
  void dispose() {
    controller.removeListener(onEndpointChanged);
    super.dispose();
  }

  void onEndpointChanged() {
    if (previousAddres == controller.text) {
      return;
    }
    endpointBloc.add(EndpointEvent.changed(controller.text));
    previousAddres = controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusDropper(
        child: AppOverlayLoader(
          child: BlocBuilder<DocumentFetchBloc, DocumentFetchState>(
            bloc: documentFetchBloc,
            builder: (context, documentFetchState) {
              return BlocBuilder<EndpointBloc, EndpointState>(
                bloc: endpointBloc,
                builder: (context, endpointState) {
                  final AppTextFieldValidness validness;
                  if (endpointState is EndpointStateValid) {
                    validness = AppTextFieldValidness.validated;
                  } else if (endpointState is EndpointStateError) {
                    validness = AppTextFieldValidness.error;
                  } else {
                    validness = AppTextFieldValidness.neutral;
                  }
                  if (documentFetchState is DocumentFetchStateFetching) {
                    context.loader.startLoading<DocumentFetchBloc>();
                  } else {
                    context.loader.stopLoading<DocumentFetchBloc>();
                  }
                  return ListView(
                    children: [
                      AppTextField(
                        controller: controller,
                        hintText: context.loc.hostAddress,
                        validness: validness,
                      ),
                      AppButton(
                        onPressed: () {
                          documentFetchBloc.add(
                            const DocumentFetchEvent.requested(),
                          );
                        },
                        text: context.loc.fetchDocumentButton,
                        isEnabled: endpointState is EndpointStateValid,
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
