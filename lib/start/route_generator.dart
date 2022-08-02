import 'package:flutter/material.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/pages/details.dart';
import 'package:nathacksentry/pages/home_page.dart';

// Specify a function returning a route. By doing this, I still get the benefits of using named routes, but I now have the option to pass data to pages. This is possible, because unlike with a map literal, you can add logic to a function.
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/details':
        // Validation of correct data type. I can add different data types here
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => DetailsPage(
                // data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: containerback,
        body: Center(
          child: Text('This is the error page'),
        ),
      );
    });
  }
}
