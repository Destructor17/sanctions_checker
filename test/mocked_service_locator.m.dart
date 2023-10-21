import 'package:either_dart/either.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sanctions_checker/features/article/domain/models/article.f.dart';
import 'package:sanctions_checker/features/article/domain/services/article_service.dart';
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result.f.dart';
import 'package:sanctions_checker/features/search/domain/services/search_service.dart';
import 'package:sanctions_checker/features/settings/domain/services/endpoint_service.dart';
import 'package:sanctions_checker/features/settings/domain/services/storage_service.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:sanctions_checker/network/services/dio_provider.dart';
import 'package:sanctions_checker/network/services/netowrk_service.dart';
import 'package:sanctions_checker/services/service_locator.dart';

@GenerateNiceMocks([
  MockSpec<DioProvider>(),
  MockSpec<StorageService>(),
  MockSpec<EndpointService>(),
  MockSpec<NetworkService>(),
  MockSpec<DocumentStorageService>(),
  MockSpec<ArticleService>(),
  MockSpec<SearchService>(),
])
import 'mocked_service_locator.m.mocks.dart';
export 'mocked_service_locator.m.mocks.dart';

late MockDioProvider mockedDioProvider;
late MockStorageService mockedStorageService;
late MockEndpointService mockedEndpointService;
late MockNetworkService mockedNetworkService;
late MockDocumentStorageService mockedDocumentStorageService;
late MockArticleService mockedArticleService;
late MockSearchService mockedSearchService;

Future<void> slInitMocks() async {
  await sl.reset();

  mockedDioProvider = MockDioProvider();
  mockedStorageService = MockStorageService();
  mockedEndpointService = MockEndpointService();
  mockedNetworkService = MockNetworkService();
  mockedDocumentStorageService = MockDocumentStorageService();
  mockedArticleService = MockArticleService();
  mockedSearchService = MockSearchService();

  // ignore: void_checks
  provideDummy<Either<void, DocumentDTO>>(const Left(()));

  // ignore: void_checks
  provideDummy<Either<void, SearchResult>>(const Left(()));
  provideDummy<Either<void, Article>>(const Left(()));

  sl
    ..registerSingleton<DioProvider>(mockedDioProvider)
    ..registerSingleton<StorageService>(mockedStorageService)
    ..registerSingleton<EndpointService>(mockedEndpointService)
    ..registerSingleton<NetworkService>(mockedNetworkService)
    ..registerSingleton<DocumentStorageService>(mockedDocumentStorageService)
    ..registerSingleton<ArticleService>(mockedArticleService)
    ..registerSingleton<SearchService>(mockedSearchService);
}
