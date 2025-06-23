import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter%20_provider.dart';
import 'package:provider_demo/homepage.dart';
import 'package:provider_demo/name_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (_) => CounterProvider(),
        ),
        ChangeNotifierProvider<NameProvider>(create: (_) => NameProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Homepage(),
    );
  }
}
