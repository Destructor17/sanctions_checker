// Mocks generated by Mockito 5.4.2 from annotations
// in sanctions_checker/test/mocked_service_locator.m.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dio/dio.dart' as _i2;
import 'package:either_dart/either.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i10;
import 'package:sanctions_checker/features/article/domain/models/article.f.dart'
    as _i13;
import 'package:sanctions_checker/features/article/domain/services/article_service.dart'
    as _i12;
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart'
    as _i11;
import 'package:sanctions_checker/features/search/domain/models/search_result.f.dart'
    as _i15;
import 'package:sanctions_checker/features/search/domain/services/search_service.dart'
    as _i14;
import 'package:sanctions_checker/features/settings/domain/services/endpoint_service.dart'
    as _i6;
import 'package:sanctions_checker/features/settings/domain/services/storage_service.dart'
    as _i4;
import 'package:sanctions_checker/network/entity/document_dto.b.dart' as _i9;
import 'package:sanctions_checker/network/services/dio_provider.dart' as _i3;
import 'package:sanctions_checker/network/services/netowrk_service.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDio_0 extends _i1.SmartFake implements _i2.Dio {
  _FakeDio_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [DioProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioProvider extends _i1.Mock implements _i3.DioProvider {
  @override
  _i2.Dio getDio() => (super.noSuchMethod(
        Invocation.method(
          #getDio,
          [],
        ),
        returnValue: _FakeDio_0(
          this,
          Invocation.method(
            #getDio,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeDio_0(
          this,
          Invocation.method(
            #getDio,
            [],
          ),
        ),
      ) as _i2.Dio);
}

/// A class which mocks [StorageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageService extends _i1.Mock implements _i4.StorageService {
  @override
  _i5.Future<String?> getString(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getString,
          [key],
        ),
        returnValue: _i5.Future<String?>.value(),
        returnValueForMissingStub: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);

  @override
  _i5.Future<void> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [EndpointService].
///
/// See the documentation for Mockito's code generation for more information.
class MockEndpointService extends _i1.Mock implements _i6.EndpointService {
  @override
  _i5.Future<String> getEndpoint() => (super.noSuchMethod(
        Invocation.method(
          #getEndpoint,
          [],
        ),
        returnValue: _i5.Future<String>.value(''),
        returnValueForMissingStub: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);

  @override
  _i5.Future<void> setEndpoint(String? newEndpoint) => (super.noSuchMethod(
        Invocation.method(
          #setEndpoint,
          [newEndpoint],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [NetworkService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkService extends _i1.Mock implements _i7.NetworkService {
  @override
  _i5.Future<_i8.Either<void, _i9.DocumentDTO>> get() => (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
        ),
        returnValue: _i5.Future<_i8.Either<void, _i9.DocumentDTO>>.value(
            _i10.dummyValue<_i8.Either<void, _i9.DocumentDTO>>(
          this,
          Invocation.method(
            #get,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i8.Either<void, _i9.DocumentDTO>>.value(
                _i10.dummyValue<_i8.Either<void, _i9.DocumentDTO>>(
          this,
          Invocation.method(
            #get,
            [],
          ),
        )),
      ) as _i5.Future<_i8.Either<void, _i9.DocumentDTO>>);
}

/// A class which mocks [DocumentStorageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDocumentStorageService extends _i1.Mock
    implements _i11.DocumentStorageService {
  @override
  _i5.Stream<_i9.DocumentDTO> get documentUpdatedStream => (super.noSuchMethod(
        Invocation.getter(#documentUpdatedStream),
        returnValue: _i5.Stream<_i9.DocumentDTO>.empty(),
        returnValueForMissingStub: _i5.Stream<_i9.DocumentDTO>.empty(),
      ) as _i5.Stream<_i9.DocumentDTO>);

  @override
  _i5.Future<void> saveDocument(_i9.DocumentDTO? document) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveDocument,
          [document],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<_i8.Either<void, _i9.DocumentDTO>> loadDocument() =>
      (super.noSuchMethod(
        Invocation.method(
          #loadDocument,
          [],
        ),
        returnValue: _i5.Future<_i8.Either<void, _i9.DocumentDTO>>.value(
            _i10.dummyValue<_i8.Either<void, _i9.DocumentDTO>>(
          this,
          Invocation.method(
            #loadDocument,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i8.Either<void, _i9.DocumentDTO>>.value(
                _i10.dummyValue<_i8.Either<void, _i9.DocumentDTO>>(
          this,
          Invocation.method(
            #loadDocument,
            [],
          ),
        )),
      ) as _i5.Future<_i8.Either<void, _i9.DocumentDTO>>);

  @override
  _i5.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [ArticleService].
///
/// See the documentation for Mockito's code generation for more information.
class MockArticleService extends _i1.Mock implements _i12.ArticleService {
  @override
  _i5.Future<_i8.Either<void, _i13.Article>> loadArticle(List<String>? path) =>
      (super.noSuchMethod(
        Invocation.method(
          #loadArticle,
          [path],
        ),
        returnValue: _i5.Future<_i8.Either<void, _i13.Article>>.value(
            _i10.dummyValue<_i8.Either<void, _i13.Article>>(
          this,
          Invocation.method(
            #loadArticle,
            [path],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i8.Either<void, _i13.Article>>.value(
                _i10.dummyValue<_i8.Either<void, _i13.Article>>(
          this,
          Invocation.method(
            #loadArticle,
            [path],
          ),
        )),
      ) as _i5.Future<_i8.Either<void, _i13.Article>>);
}

/// A class which mocks [SearchService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchService extends _i1.Mock implements _i14.SearchService {
  @override
  _i5.Future<_i8.Either<void, _i15.SearchResult>> search(
    String? text,
    _i14.DocumentSearchType? searchType,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #search,
          [
            text,
            searchType,
          ],
        ),
        returnValue: _i5.Future<_i8.Either<void, _i15.SearchResult>>.value(
            _i10.dummyValue<_i8.Either<void, _i15.SearchResult>>(
          this,
          Invocation.method(
            #search,
            [
              text,
              searchType,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i8.Either<void, _i15.SearchResult>>.value(
                _i10.dummyValue<_i8.Either<void, _i15.SearchResult>>(
          this,
          Invocation.method(
            #search,
            [
              text,
              searchType,
            ],
          ),
        )),
      ) as _i5.Future<_i8.Either<void, _i15.SearchResult>>);
}
