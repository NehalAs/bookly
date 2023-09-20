
import 'package:bookly/features/home/data/models/book_model.dart';

abstract class FeaturedBooksState {
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;

  const FeaturedBooksFailure(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}