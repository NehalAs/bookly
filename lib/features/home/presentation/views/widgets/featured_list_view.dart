import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class FeaturedBooksListView  extends StatelessWidget {
  const FeaturedBooksListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder:(context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookImage(ImageUrl:state.books[index].volumeInfo.imageLinks.thumbnail??'',)),
              ),
              itemCount: state.books.length,
            ),
          );
        }
        else if(state is FeaturedBooksFailure)
          {
            return Center(child: Text(state.errorMessage));
          }
        else
          {
            return Center(child: CircularProgressIndicator());
          }
      }
    );
  }
}
