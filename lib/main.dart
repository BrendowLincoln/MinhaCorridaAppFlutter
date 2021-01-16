import 'package:flutter/material.dart';
import 'package:minha_corrida/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minha Corrida APP',
      theme: ThemeData(
        primaryColor:  Color.fromRGBO(74, 25, 59, 1),
        accentColor: Color.fromRGBO(248, 97, 38, 1),
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
              color: Color.fromRGBO(74, 25, 59, 1),
              fontFamily: 'Roboto',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            button:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
        ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}


