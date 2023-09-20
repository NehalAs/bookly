import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
        child: Text(''),//BookListViewItem(ImageUrl: '',),
      ),
      itemCount: 10,
    );
  }
}
