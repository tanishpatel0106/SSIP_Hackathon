import 'package:flutter/material.dart';
import 'screens/login_materialapp.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData.dark(),
        // home: RegisterCompany(),
        home: const MyApp(  ),
      ),
  );
}