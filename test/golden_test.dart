import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/mockito.dart';
import 'package:sanctions_checker/features/article/domain/models/article.f.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';
import 'package:sanctions_checker/features/document/presentation/document_view.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result.f.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item.f.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item_group.f.dart';
import 'package:sanctions_checker/features/search/presentation/search_view.dart';
import 'package:sanctions_checker/features/settings/presentation/settings_view.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:ui_kit/ui_kit.dart';

import 'app_test_wrapper.dart';
import 'mocked_service_locator.m.dart';

void main() {
  group('Golden tests', () {
    testGoldens('ArticleView', (tester) async {
      await slInitMocks();

      when(mockedDocumentStorageService.documentUpdatedStream).thenAnswer(
        (_) => const Stream<DocumentDTO>.empty(),
      );

      const article = Article(
        title: 'A title',
        body: 'An article body\nmultiline',
        sections: [
          ArticleReference(path: ['1', 'a'], title: 'ref1'),
          ArticleReference(path: ['2', 'b'], title: 'ref2'),
          ArticleReference(path: ['3', 'c'], title: 'ref3'),
        ],
      );

      when(mockedArticleService.loadArticle([])).thenAnswer(
        (_) async => const Right(article),
      );

      const widget = DocumentView(path: []);
      await tester.pumpWidgetBuilder(
        widget,
        wrapper: appTestWrapper(AppThemeData.light()),
      );
      await multiScreenGolden(tester, 'article_view_light');

      await tester.pumpWidgetBuilder(
        widget,
        wrapper: appTestWrapper(AppThemeData.dark()),
      );
      await multiScreenGolden(tester, 'article_view_dark');
    });

    testGoldens('SearchView', (tester) async {
      await slInitMocks();

      when(mockedDocumentStorageService.documentUpdatedStream).thenAnswer(
        (_) => const Stream<DocumentDTO>.empty(),
      );

      final searchResult = SearchResult(
        itemGroups: [
          SearchResultItemGroup(
            articleReferences: [
              const ArticleReference(path: [], title: 'ref1'),
              const ArticleReference(path: [], title: 'ref2'),
            ],
            items: [
              const SearchResultItem(key: '1', body: 'item1'),
              const SearchResultItem(key: '2', body: 'item2'),
              SearchResultItem(key: '3', body: 'item2' * 20),
            ],
          ),
        ],
      );

      when(mockedDocumentStorageService.documentUpdatedStream)
          .thenAnswer((_) => const Stream<DocumentDTO>.empty());
      when(mockedSearchService.search(any, any)).thenAnswer(
        (_) async => Right(searchResult),
      );

      const widget = SearchView();

      await tester.pumpWidgetBuilder(
        widget,
        wrapper: appTestWrapper(AppThemeData.light()),
      );
      await multiScreenGolden(tester, 'search_view_light');

      await tester.pumpWidgetBuilder(
        widget,
        wrapper: appTestWrapper(AppThemeData.dark()),
      );
      await multiScreenGolden(tester, 'search_view_dark');
    });

    testGoldens('SettingsView', (tester) async {
      await slInitMocks();

      when(mockedEndpointService.getEndpoint()).thenAnswer(
        (realInvocation) async => 'http://example.com/example.json',
      );

      const widget = SettingsView();

      await tester.pumpWidgetBuilder(
        widget,
        wrapper: appTestWrapper(AppThemeData.light()),
      );
      await multiScreenGolden(tester, 'settings_view_light');

      await tester.pumpWidgetBuilder(
        widget,
        wrapper: appTestWrapper(AppThemeData.dark()),
      );
      await multiScreenGolden(tester, 'settings_view_dark');
    });
  });
}
