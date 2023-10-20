import 'dart:math';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:sanctions_checker/features/settings/domain/services/endpoint_service.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:sanctions_checker/services/dio_provider.dart';

abstract interface class NetworkService {
  Future<Either<void, DocumentDTO>> get();
}

final class NetworkServiceImpl implements NetworkService {
  NetworkServiceImpl(
      {required this.dioProvider, required this.endpointService});

  DioProvider dioProvider;
  EndpointService endpointService;

  @override
  Future<Either<void, DocumentDTO>> get() async {
    final dio = dioProvider.getDio();
    try {
      final response = await dio.get<String>(
        await endpointService.getEndpoint(),
        options: Options(responseType: ResponseType.plain),
      );
      if (kDebugMode) {
        await Future.delayed(
          Duration(
            milliseconds: (Random().nextDouble() * 1000).ceil(),
          ),
        );
      }

      final data = response.data;
      if (data == null) {
        // ignore: void_checks
        return const Left(());
      }
      final dto = DocumentDTO.fromJson(data);
      if (dto == null) {
        // ignore: void_checks
        return const Left(());
      }
      return Right(dto);
    } catch (err) {
      // ignore: void_checks
      return const Left(());
    }
  }
}
