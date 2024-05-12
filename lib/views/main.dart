import 'package:bessilink_app/views/scan_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Specify the initial route to navigate to when the app opens.
      initialRoute: '/ScanScreen',
      // Define routes for different screens.
      routes: {
        // Define the route for the initial screen.
        '/ScanScreen': (context) => ScanScreen(),
        // You can define routes for other screens here.
      },
    );
  }
}








