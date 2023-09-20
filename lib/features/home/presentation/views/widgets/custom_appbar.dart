import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/api_service.dart';
import '../../../data/repos/home_repo_impl.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.only(start:24,end:24,bottom:20),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(AssetsData.logo,
            height: 20,
            ),
            Spacer(),
            IconButton(
              onPressed: () async {
                //GoRouter.of(context).push(AppRouter.kSearchView);
               var home= HomeRepoImpl(ApiService(Dio()));
               await home.fetchNewestBooks();
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
