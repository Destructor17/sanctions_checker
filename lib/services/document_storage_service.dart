import 'package:either_dart/either.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:sanctions_checker/services/storage_service.dart';

abstract interface class DocumentStorageService {
  Future<void> saveDocument(DocumentDTO document);
  Future<Either<void, DocumentDTO>> loadDocument();
}

final class DocumentStorageServiceImpl implements DocumentStorageService {
  DocumentStorageServiceImpl({required this.storageService});

  final StorageService storageService;

  static const key = 'document_json';

  @override
  Future<void> saveDocument(DocumentDTO document) async {
    await storageService.setString(key, document.toJson());
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
}
