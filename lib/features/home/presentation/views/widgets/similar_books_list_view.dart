import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height* 0.16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder:(context, index) => Padding(
                padding:const EdgeInsets.symmetric(horizontal:5),
                child: CustomBookImage(ImageUrl:state.books[index].volumeInfo.imageLinks.thumbnail??'',),

              ),
              itemCount: state.books.length,

            ),
          );
        }else if (state is SimilarBooksFailure)
          {
            return Center(child: Text(state.errMessage));
          }
        else{
          return Center(child: CircularProgressIndicator());
        }
      }
    );
  }
}
