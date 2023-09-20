import 'package:bookly/core/error/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo
{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);


  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
        var data= await apiService.get(
            endPoint:'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
        List<BookModel> books =[];
        for(var item in data['items'])
          {
            books.add(BookModel.fromJson(item));
          }
      print(books[0].volumeInfo.imageLinks.thumbnail);
      return right(books);
    } catch (e) {
      print(e);
      if(e is DioException)
        {
          return left(ServerFailure.fromDioException(e));
        }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data= await apiService.get(
          endPoint:'volumes?Filtering=free-ebooks&q=subject:fiction');
      List<BookModel> books =[];
      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }
      print(books);
      return right(books);
    } catch (e) {
      print(e);
      if(e is DioException)
      {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks({required String category}) async {

    try {
      var data= await apiService.get(
          endPoint:'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:fiction');
      List<BookModel> books =[];
      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }
      print(books);
      return right(books);
    } catch (e) {
      print(e);
      if(e is DioException)
      {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}
