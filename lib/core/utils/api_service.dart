import 'package:dio/dio.dart';

class ApiService{

  final _baseUrl ='https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String,dynamic>> get({
    required String endPoint,
  }) async {

    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }


  Future<Map<String,dynamic>>api({
    required String endPoint,
    String? type,
    Map<String, dynamic>? formData,
    bool headerState = true,
  }) async {

    Map<String, String> headers = {
      "Accept": "application/json",
      //"Authorization": "Bearer $jwt",
      //"X-localization": AppUtil.Lang == "" ? "en" : AppUtil.Lang
    };
    dio.options.headers=headerState ? headers : null;
    var response = type=='get'
        ?await dio.get('$_baseUrl$endPoint',)
        :type=='post'
        ?await dio.post('$_baseUrl$endPoint',data:formData,)
        :await dio.put('$_baseUrl$endPoint',data:formData,);
    return response.data;
  }

}