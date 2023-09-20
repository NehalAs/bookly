import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';
import 'featured_books_states.dart';


class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}