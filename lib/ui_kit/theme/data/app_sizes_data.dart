class AppSizesData {
  const AppSizesData({
    required this.borderRadius,
    required this.borderWidth,
    required this.margin,
  });

  factory AppSizesData.regular() => const AppSizesData(
        borderRadius: 12,
        borderWidth: 2,
        margin: 4,
      );

  final double borderRadius;
  final double borderWidth;
  final double margin;
}
