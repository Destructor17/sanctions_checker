import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sanctions_checker/features/article/domain/models/article.f.dart';
import 'package:sanctions_checker/features/article/domain/services/article_service.dart';
import 'package:sanctions_checker/services/service_locator.dart';

part 'document_bloc.f.freezed.dart';
part 'document_event.f.dart';
part 'document_state.f.dart';

class DocumentBloc extends Bloc<DocumentEvent, DocumentState> {
  DocumentBloc({required this.path}) : super(const DocumentState.loading()) {
    on<DocumentEventRequested>(
      _requested,
      transformer: restartable(),
    );
    add(const DocumentEvent.requested());
  }

  final List<String> path;

  FutureOr<void> _requested(
    DocumentEventRequested event,
    Emitter<DocumentState> emit,
  ) async {
    final articleService = sl.get<ArticleService>();
    final result = await articleService.loadArticle(path);
    if (result.isLeft) {
      emit(const DocumentState.error());
      return;
    }
    emit(DocumentState.result(
      article: result.right,
    ));
  }
}
