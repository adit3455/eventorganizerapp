import 'package:eventorganizerapp/blocs/bottomnav_bloc/bottom_nav_bloc.dart';
import 'package:eventorganizerapp/screens/export_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'utils/export_utils.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) {
      return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => BottomNavBloc()),
          ],
          child: MaterialApp(
            home: const BottomPage(),
            theme: AppThemeUtil.theme,
          ));
    },
  ));
}
