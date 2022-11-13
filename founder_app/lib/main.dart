import 'package:flutter/material.dart';
import 'package:only_funds/providers/founders.dart';
import 'package:provider/provider.dart';
import 'screens/login_materialapp.dart';

void main() {
  runApp(
    MultiProvider(
      providers: <ChangeNotifierProvider>[
        ChangeNotifierProvider<Founders>(create: (ctx) => Founders()),
      ],
      child: MaterialApp(
      theme: ThemeData.dark(),
      home: MyApp(),
      // home: const InvestorReg(),
      ),
    ),
  );
}