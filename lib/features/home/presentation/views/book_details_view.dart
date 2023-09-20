import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/similar_books_cubit/similar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(widget.bookModel.volumeInfo.categories?[0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BookDetailsViewBody(bookModel:widget.bookModel,)
    );
  }
}
