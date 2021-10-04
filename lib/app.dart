import 'package:b_wallet/b_wallet/barrel.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routes = RouteMap(routes: {
    '/': (_) => MaterialPage(child: LoginScreen()),
    '/otp': (_) => MaterialPage(child: OtpScreen()),
    '/home': (_) => MaterialPage(child: HomeScreen()),
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'B-Wallet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
