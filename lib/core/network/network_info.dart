import 'package:connectivity_plus/connectivity_plus.dart';

class NetWrokInfo {
  Connectivity connectivity;
  NetWrokInfo(this.connectivity);

  Future<bool> get isConnected async {
    var result = await connectivity.checkConnectivity();

    if (result != ConnectivityResult.none) {
      return true;
    } else {
      return false;
    }
  }
}
