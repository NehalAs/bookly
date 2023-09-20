import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/splash/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'conistance.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';
import 'features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => FeaturedBooksCubit(
        //     getIt.get<HomeRepoImpl>() as HomeRepo ,
        //   )..fetchFeaturedBooks(),
        // ),
        BlocProvider(create:(context) =>NewestBooksCubit(HomeRepoImpl(ApiService(Dio())))..fetchNewestBooks(),),
        BlocProvider(create:(context) =>FeaturedBooksCubit(HomeRepoImpl(ApiService(Dio())))..fetchFeaturedBooks(),),


      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        //home:const SplashView(),
      ),
    );
  }
}