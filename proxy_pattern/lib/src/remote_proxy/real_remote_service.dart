import 'service.dart';

// Real subject (simulating a remote service)
class RealRemoteService implements Service {
  @override
  Future<void> request() async {
    print('Connecting to remote service...');
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
    print('Remote service is handling the request.');
  }
}
