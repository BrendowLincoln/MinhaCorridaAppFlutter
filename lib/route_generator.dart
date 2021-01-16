import 'package:flutter/material.dart';
import 'package:minha_corrida/src/screens/drivers_screen.dart';
import 'package:minha_corrida/src/screens/home_screen.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/drivers':
        return MaterialPageRoute(
          builder: (_) => DriversScreen(controller: args,)
        );
    }
  }
}