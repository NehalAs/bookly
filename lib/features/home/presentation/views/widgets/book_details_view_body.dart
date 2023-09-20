import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children:[
              CustomBookDetailsAppbar(),
              BookDetailsSection(bookModel:bookModel),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBooksSection(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
