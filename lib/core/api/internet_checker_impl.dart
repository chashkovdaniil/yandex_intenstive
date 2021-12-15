import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'internet_checker.dart';

class InternetCheckerImpl implements InternetChecker {
  final _checker = InternetConnectionChecker();
  @override
  Future<bool> isConnected() {
    return _checker.hasConnection;
  }

  @override
  Stream<bool> isConnectedStream() {
    return _checker.onStatusChange.map(
      (event) => event == InternetConnectionStatus.connected,
    );
  }
}
