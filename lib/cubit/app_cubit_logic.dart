import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:flutter_cubit/pages/home_page.dart';
import 'package:flutter_cubit/pages/navpages/main_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

import 'app_cubit_states.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state){
          if(state is WelcomeState){
            return WelcomePage();
          }
          if(state is LoadedState){
            return Ma-inPage();
          }
          if(state is DetailState){
            return DetailPage();
          }
          if(state is LoadingState){
            return Center(child: CircularProgressIndicator(),);
          }
          else{
            return Container();
          }
        },
      )
    );
  }
}
