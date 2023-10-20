import 'package:sanctions_checker/features/settings/domain/services/storage_service.dart';

abstract interface class EndpointService {
  Future<String> getEndpoint();
  Future<void> setEndpoint(String newEndpoint);
}

final class EndpointServiceImpl implements EndpointService {
  EndpointServiceImpl({required this.storageService});

  final StorageService storageService;

  static const key = 'endpoint';

  @override
  Future<String> getEndpoint() async {
    return await storageService.getString(EndpointServiceImpl.key) ?? '';
  }

  @override
  Future<void> setEndpoint(String newEndpoint) async {
    await storageService.setString(EndpointServiceImpl.key, newEndpoint);
  }
}
