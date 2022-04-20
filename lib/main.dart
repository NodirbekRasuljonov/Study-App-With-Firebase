import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyapp/core/components/theme_comp.dart';
import 'package:studyapp/provider/categories_check_provider.dart';
import 'package:studyapp/provider/checkbox_provider.dart';
import 'package:studyapp/provider/login_provider.dart';
import 'package:studyapp/provider/subjects_image_provider.dart';
import 'package:studyapp/provider/textfieldcontroller.dart';
import 'package:studyapp/routes/my_routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TextFieldController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CheckBoxProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoriesCheckProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SubjectsImage(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyRoutes _myroutes = MyRoutes();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudyApp',
      theme: ThemeComp.themeData,
      onGenerateRoute: _myroutes.myRoute,
      // initialRoute: context.watch<LoginProvider>().route,
      initialRoute: '/subjects',
    );
  }
}
