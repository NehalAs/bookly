import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../conistance.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
       slivers: [
         SliverToBoxAdapter(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               CustomAppBar(),
               FeaturedBooksListView(),
               SizedBox(
                 height:50,
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 24),
                 child: Text('Newest Books',
                   style: Styles.textStyle18,),
               ),
               SizedBox(
                 height:20,
               ),
             ],
           ),
         ),
         SliverFillRemaining(
           child:BestSellerListView(),
         ),
       ],
    );
  }
}
