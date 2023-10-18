import 'package:get_it/get_it.dart';
import 'package:sanctions_checker/services/dio_provider.dart';
import 'package:sanctions_checker/services/document_storage_service.dart';
import 'package:sanctions_checker/services/endpoint_service.dart';
import 'package:sanctions_checker/services/netowrk_service.dart';
import 'package:sanctions_checker/services/storage_service.dart';

final GetIt sl = GetIt.instance;

Future<void> slInit() async {
  await sl.reset();

  sl
    ..registerFactory<DioProvider>(DioProviderImpl.new)
    ..registerFactory<StorageService>(StorageServiceImpl.new)
    ..registerFactory<EndpointService>(
      () => EndpointServiceImpl(storageService: sl.get<StorageService>()),
    )
    ..registerFactory<NetworkService>(
      () => NetworkServiceImpl(
        dioProvider: sl.get<DioProvider>(),
        endpointService: sl.get<EndpointService>(),
      ),
    )
    ..registerFactory<DocumentStorageService>(
      () =>
          DocumentStorageServiceImpl(storageService: sl.get<StorageService>()),
    );

  _initRepositories();
  _initServices();
}

Future<void> diDispose() => sl.reset();

void _initRepositories() {}

void _initServices() {}
