import 'package:dio/dio.dart';

abstract class Failures{
  final String errorMessage;

  const Failures(this.errorMessage);

}

class ServerFailure extends Failures {

  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException){
     switch(dioException.type)
     {
       case DioExceptionType.connectionTimeout:
         return ServerFailure('connection timeout with ApiServer');
       case DioExceptionType.sendTimeout:
         return ServerFailure('send timeout with ApiServer');
       case DioExceptionType.receiveTimeout:
         return ServerFailure('Receive timeout with ApiServer');
       case DioExceptionType.badResponse:
         return ServerFailure.fromResponse(dioException.response!.statusCode,dioException.response!.data);
       case DioExceptionType.cancel:
         return ServerFailure('Request to ApiServer was canceled');
       case DioExceptionType.connectionError:
         return ServerFailure('No Internet Connection');
       case DioExceptionType.unknown:
         return ServerFailure('Unexpected Error, Please try again!');
       default:
         return ServerFailure('Opps There was an Error, Please try again');
     }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }

}

