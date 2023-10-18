import 'package:sanctions_checker/network/entity/document_dto.b.dart';
import 'package:sanctions_checker/services/storage_service.dart';

abstract interface class DocumentStorageService {
  Future<void> saveDocument(DocumentDTO document);
}

final class DocumentStorageServiceImpl implements DocumentStorageService {
  DocumentStorageServiceImpl({required this.storageService});

  final StorageService storageService;

  static const key = 'document_json';

  @override
  Future<void> saveDocument(DocumentDTO document) async {
    await storageService.setString(key, document.toJson());
  }
}
