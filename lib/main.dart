import 'package:flutter/material.dart';
import 'package:vodafone_redesign/app.dart';
import 'package:vodafone_redesign/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vodafone Redesign',
      
      theme: AppTheme().light,
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme().dark,
      home: const App(),
    );
  }
}
