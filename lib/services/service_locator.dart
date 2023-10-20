import 'package:get_it/get_it.dart';
import 'package:sanctions_checker/features/article/domain/services/article_service.dart';
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart';
import 'package:sanctions_checker/features/search/domain/services/search_service.dart';
import 'package:sanctions_checker/features/settings/domain/services/endpoint_service.dart';
import 'package:sanctions_checker/features/settings/domain/services/storage_service.dart';
import 'package:sanctions_checker/network/services/dio_provider.dart';
import 'package:sanctions_checker/network/services/netowrk_service.dart';

final GetIt sl = GetIt.instance;

Future<void> slInit() async {
  await sl.reset();

  sl
    ..registerFactory<DioProvider>(DioProviderImpl.new)
    ..registerFactory<StorageService>(StorageServiceImpl.new)
    ..registerFactory<EndpointService>(
      () => EndpointServiceImpl(
        storageService: sl.get<StorageService>(),
      ),
    )
    ..registerFactory<NetworkService>(
      () => NetworkServiceImpl(
        dioProvider: sl.get<DioProvider>(),
        endpointService: sl.get<EndpointService>(),
      ),
    )
    ..registerLazySingleton<DocumentStorageService>(
      () => DocumentStorageServiceImpl(
        storageService: sl.get<StorageService>(),
      ),
      dispose: (param) => param.close(),
    )
    ..registerFactory<ArticleService>(
      () => ArticleServiceImpl(
        documentStorageService: sl.get<DocumentStorageService>(),
      ),
    )
    ..registerFactory<SearchService>(
      () => SearchServiceImpl(
        documentStorageService: sl.get<DocumentStorageService>(),
      ),
    );

  _initRepositories();
  _initServices();
}

Future<void> diDispose() => sl.reset();

void _initRepositories() {}

void _initServices() {}
