import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/mockito.dart';
import 'package:sanctions_checker/features/article/domain/models/article.f.dart';
import 'package:sanctions_checker/features/article/domain/models/article_reference.f.dart';
import 'package:sanctions_checker/features/article/presentation/article_view.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result.f.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item.f.dart';
import 'package:sanctions_checker/features/search/domain/models/search_result_item_group.f.dart';
import 'package:sanctions_checker/features/search/presentation/search_result_view.dart';
import 'package:sanctions_checker/features/search/presentation/search_view.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:ui_kit/ui_kit.dart';

import 'mocked_service_locator.m.dart';

void main() {
  group('ArticleView tests', () {
    const article = Article(
      title: 'A title',
      body: 'An article body\nmultiline',
      sections: [
        ArticleReference(path: ['1', 'a'], title: 'ref1'),
        ArticleReference(path: ['1', 'a'], title: 'ref2'),
        ArticleReference(path: ['1', 'a'], title: 'ref3'),
      ],
    );
    testGoldens('ArticleView: Light', (tester) async {
      await tester.pumpWidgetBuilder(
        AppTheme(
          theme: AppThemeData.light(),
          child: ArticleView(article: article, onSectionTap: (_) {}),
        ),
        wrapper: materialAppWrapper(
          theme: AppThemeData.light().materialTheme,
        ),
      );
      await multiScreenGolden(tester, 'article_view_light');
    });
    testGoldens('ArticleView: Dark', (tester) async {
      await tester.pumpWidgetBuilder(
        AppTheme(
          theme: AppThemeData.dark(),
          child: ArticleView(article: article, onSectionTap: (_) {}),
        ),
        wrapper: materialAppWrapper(
          theme: AppThemeData.dark().materialTheme,
        ),
      );
      await multiScreenGolden(tester, 'article_view_dark');
    });
  });

  group('SearchResultView tests', () {
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
    testGoldens('SearchResultView: Light', (tester) async {
      await tester.pumpWidgetBuilder(
        AppTheme(
          theme: AppThemeData.light(),
          child: CustomScrollView(
            slivers: [SearchResultView(searchResult: searchResult)],
          ),
        ),
        wrapper: materialAppWrapper(
          theme: AppThemeData.light().materialTheme,
        ),
      );
      await multiScreenGolden(tester, 'search_result_view_light');
    });
    testGoldens('SearchResultView: Dark', (tester) async {
      await tester.pumpWidgetBuilder(
        AppTheme(
          theme: AppThemeData.dark(),
          child: CustomScrollView(
            slivers: [SearchResultView(searchResult: searchResult)],
          ),
        ),
        wrapper: materialAppWrapper(
          theme: AppThemeData.dark().materialTheme,
        ),
      );
      await multiScreenGolden(tester, 'search_result_view_dark');
    });
  });

  group('SearchView tests', () {
    testGoldens('SearchResultView: Dark', (tester) async {
      await slInitMocks();

      when(mockedDocumentStorageService.documentUpdatedStream)
          .thenAnswer((_) => const Stream<DocumentDTO>.empty());
      when(mockedSearchService.search(any, any))
          // ignore: void_checks
          .thenAnswer((_) async => const Left(()));

      await tester.pumpWidgetBuilder(
        AppTheme(
          theme: AppThemeData.dark(),
          child: Localizations(
            delegates: AppLocalizations.localizationsDelegates,
            locale: const Locale('en'),
            child: const SearchView(),
          ),
        ),
        wrapper: materialAppWrapper(
          theme: AppThemeData.dark().materialTheme,
        ),
      );
      await multiScreenGolden(tester, 'search_view_dark');
    });
  });
}
