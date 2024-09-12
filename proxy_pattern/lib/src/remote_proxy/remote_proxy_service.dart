import 'real_remote_service.dart';
import 'service.dart';

// Remote Proxy
class RemoteProxyService implements Service {
  final RealRemoteService _realService = RealRemoteService();

  @override
  Future<void> request() async {
    print('Proxy: Forwarding request to the remote service...');
    await _realService.request(); // Delegating request to the remote service
    print('Proxy: Response received from the remote service.');
  }
}
