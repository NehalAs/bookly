import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  BooksAction({super.key,required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: CustomButton(
              buttonText: 'Free',
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),topLeft: Radius.circular(16)),
            ),
        ),
        Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri uri=Uri.parse(bookModel.volumeInfo.previewLink!);
                if (!await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
              buttonText: bookModel.volumeInfo.previewLink!=null?'preview':'Not Available',
              textColor: Colors.white,
              buttonColor: Color(0xffEF8262),
              fontSize: 16,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(16),topRight: Radius.circular(16)),
            ),
        ),
      ],
    );
  }
}
