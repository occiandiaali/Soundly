import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundly/src/pages/getting_started.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soundly',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const GettingStartedPage(),
    );
  }
}

