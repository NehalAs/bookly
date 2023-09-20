import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: CustomSearchTextField(),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
            child: SearchResultListView(),
        )
      ],
    );
  }
}
