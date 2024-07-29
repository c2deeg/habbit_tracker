import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/app/app.dart';
import 'core/constants/common_strings.dart';
import 'package:intl/date_symbol_data_local.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting("en", null);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // await GetStorage.init();
  runApp(AppContainer(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Feel Write',
            locale: const Locale('en', 'US'),
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            getPages: AppPages(),
            initialRoute: Routes.INITIAL,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: AppContainer.of(context).textTheme,
              fontFamily: CommonStrings.vitnamPro,
            ),
          );
        });


  }
}

