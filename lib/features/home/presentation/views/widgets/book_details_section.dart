import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: CustomBookImage(ImageUrl:bookModel.volumeInfo.imageLinks.thumbnail??''),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            '${bookModel.volumeInfo.title}',
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            '${bookModel.volumeInfo.authors?[0]}',
            style: Styles.textStyle18
                .copyWith(color: Colors.white70, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,

          ),
          SizedBox(
            height: 18,
          ),
          BookRating(mainAxisAlignment: MainAxisAlignment.center,count:bookModel.volumeInfo.ratingsCount??0,rating:bookModel.volumeInfo.averageRating??0,),
          SizedBox(
            height: 37,
          ),
          BooksAction(bookModel: bookModel,),
        ],
      ),
    );
  }
}
