// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';
import 'package:sanctions_checker/features/document/domain/services/document_storage_service.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item.f.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item_group.f.dart';
import 'package:sanctions_checker/features/search/domain/services/search_service.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';

@GenerateNiceMocks([MockSpec<DocumentStorageService>()])
import 'search_test.m.mocks.dart';

void main() {
  group('SearchService tests', () {
    WidgetsFlutterBinding.ensureInitialized();
    // ignore: void_checks
    provideDummy<Either<void, DocumentDTO>>(const Left(()));
    final documentStorageService = MockDocumentStorageService();
    final searchService =
        SearchServiceImpl(documentStorageService: documentStorageService);

    test('Loading failure', () async {
      when(documentStorageService.loadDocument())
          // ignore: void_checks
          .thenAnswer((_) async => const Left(()));
      final result =
          await searchService.search('Электр', DocumentSearchType.fullText);
      expect(result.isLeft, true);
    });

    test('Text search', () async {
      when(documentStorageService.loadDocument()).thenAnswer(
        (_) async => Right(
          DocumentDTO.fromJson(
            await rootBundle.loadString('assets/parsed_documents/example.json'),
          )!,
        ),
      );
      final result =
          await searchService.search('Электр', DocumentSearchType.fullText);
      expect(result.isRight, true);
      expect(result.right.itemGroups.length, 1);
      expect(result.right.itemGroups[0].items.length, 15);
      expect(result.right.itemGroups[0].articleReferences, [
        const ArticleReference(path: ['1', 's'], title: 'Статья 1s')
      ]);
    });

    test('Text search with key search type', () async {
      final result =
          await searchService.search('Электр', DocumentSearchType.key);
      expect(result.isRight, true);
      expect(result.right.itemGroups, []);
    });

    test('Key search', () async {
      final result = await searchService.search('4011', DocumentSearchType.key);
      expect(result.isRight, true);
      expect(result.right.itemGroups, [
        const SearchResultItemGroup(
          articleReferences: [
            ArticleReference(path: ['1', 'r'], title: 'Статья 1r')
          ],
          items: [
            SearchResultItem(
                key: '4011',
                body: 'Шины и покрышки пневматические резиновые\nновые')
          ],
        )
      ]);
    });
  });
}
