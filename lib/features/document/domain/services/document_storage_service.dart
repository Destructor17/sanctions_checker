import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:sanctions_checker/features/settings/domain/services/storage_service.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';

abstract interface class DocumentStorageService {
  Stream<DocumentDTO> get documentUpdatedStream;

  Future<void> saveDocument(DocumentDTO document);
  Future<Either<void, DocumentDTO>> loadDocument();
  Future<void> close();
}

final class DocumentStorageServiceImpl implements DocumentStorageService {
  DocumentStorageServiceImpl({required this.storageService});

  final documentUpdatedStreamController =
      StreamController<DocumentDTO>.broadcast();

  @override
  Stream<DocumentDTO> get documentUpdatedStream =>
      documentUpdatedStreamController.stream;

  final StorageService storageService;

  static const key = 'document_json';

  @override
  Future<void> saveDocument(DocumentDTO document) async {
    await storageService.setString(key, document.toJson());
    documentUpdatedStreamController.sink.add(document);
  }

  @override
  Future<Either<void, DocumentDTO>> loadDocument() async {
    final serialized = await storageService.getString(key);
    if (serialized == null) {
      // ignore: void_checks
      return const Left(());
    }
    final document = DocumentDTO.fromJson(serialized);
    if (document == null) {
      // ignore: void_checks
      return const Left(());
    }
    return Right(document);
  }

  @override
  Future<void> close() async {
    documentUpdatedStreamController.close();
  }
}
