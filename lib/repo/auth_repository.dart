import 'package:viewbooster/data/network/BaseApiService.dart';
import 'package:viewbooster/data/network/NetworkApiService.dart';
import 'package:viewbooster/resources/app_url.dart';

class AuthRepository {
  BaseAPIServices _apiServices = NetworkAPIService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrls.loginApiEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> SignUpApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          AppUrls.registerApiEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}

//////////////
