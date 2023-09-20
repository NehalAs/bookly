import 'package:bookly/conistance.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.model});
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap:() {
          GoRouter.of(context).push(AppRouter.kBookDetailsView,
          extra: model,
          );
        },
        child: SizedBox(
          height: 125,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBookImage(ImageUrl:model.volumeInfo.imageLinks.thumbnail??''),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.volumeInfo.title??'',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    model.volumeInfo.authors?[0]??'',
                    style: Styles.textStyle14.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(
                          rating:model.volumeInfo.averageRating??0,
                          count: model.volumeInfo.ratingsCount??0,
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
