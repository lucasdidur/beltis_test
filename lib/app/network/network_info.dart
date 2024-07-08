import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

@Injectable(as: INetworkInfo)
class NetworkInfo implements INetworkInfo {
  InternetConnection internetConnection;

  NetworkInfo(this.internetConnection);

  @override
  Future<bool> get isConnected => internetConnection.hasInternetAccess;
}
