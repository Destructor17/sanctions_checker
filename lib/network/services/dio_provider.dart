import 'package:dio/dio.dart';

abstract interface class DioProvider {
  Dio getDio();
}

final class DioProviderImpl implements DioProvider {
  final Dio dio = Dio();

  @override
  Dio getDio() {
    return dio;
  }
}
