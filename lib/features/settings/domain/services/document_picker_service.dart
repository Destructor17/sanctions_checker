import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:file_picker/file_picker.dart';
import 'package:sanctions_checker/network/entity/document_dto.b.dart';

abstract interface class DocumentPickerService {
  Future<Either<void, DocumentDTO>> pick();
}

final class DocumentPickerServiceImpl implements DocumentPickerService {
  DocumentPickerServiceImpl();

  @override
  Future<Either<void, DocumentDTO>> pick() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (result != null) {
      final file = result.files.single;
      final path = file.path;
      if (path != null) {
        final file = File(path);
        final serialized = await file.readAsString();
        final document = DocumentDTO.fromJson(serialized);
        if (document != null) {
          return Right(document);
        }
      }
    }
    // ignore: void_checks
    return const Left(());
  }
}
