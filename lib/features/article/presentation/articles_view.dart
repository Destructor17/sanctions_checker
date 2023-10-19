// import 'package:flutter/material.dart';
// import 'package:sanctions_checker/features/article/presentation/article_view.dart';
// import 'package:sanctions_checker/network/entity/article_dto.b.dart';
// import 'package:sliver_tools/sliver_tools.dart';

// class ArticlesView extends StatelessWidget {
//   const ArticlesView({
//     required this.articles,
//     required this.depth,
//     required this.expandenPath,
//     super.key,
//   });

//   final Map<String, ArticleDTO> articles;
//   final int depth;
//   final List<String>? expandenPath;

//   @override
//   Widget build(BuildContext context) {
//     return MultiSliver(
//       children: (articles.keys.toList()..sort())
//           .map((pathPart) {
//             final section = articles[pathPart];
//             if (section == null) {
//               return null;
//             }
//             return ArticleView(
//               key: ValueKey(pathPart),
//               article: section,
//               depth: depth + 1,
//               expandenPath: (expandenPath?.first == pathPart)
//                   ? expandenPath?.skip(1).toList()
//                   : null,
//             );
//           })
//           .whereType<ArticleView>()
//           .toList(),
//     );
//   }
// }
