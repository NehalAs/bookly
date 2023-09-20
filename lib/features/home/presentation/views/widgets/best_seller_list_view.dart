import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/newest_books_cubit/newest_books_cubit.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(
      builder:(context, state) {
       if(state is NewestBooksSuccess) {
         return ListView.builder(
           physics: NeverScrollableScrollPhysics(),
           padding: EdgeInsets.zero,
           itemBuilder: (context, index) =>
               Padding(
                 padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                 child: BookListViewItem(model:state.books[index],),
               ),
           itemCount: state.books.length,
         );
       }else if(state is NewestBooksFailure)
         {
           return Center(child: Text(state.errMessage));
         }else
           {
             return Center(child: CircularProgressIndicator());
           }
      },
    );
  }
}
