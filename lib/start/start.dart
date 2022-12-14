import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/start/app_setup.dart';
import 'package:nathacksentry/start/route_generator.dart';

//the start of the app.
class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },

        //replace this with a call to a switch statement to check for login state
        child: AppSetup(),
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      //genrates the routes for the app
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
