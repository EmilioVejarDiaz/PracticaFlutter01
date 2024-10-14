import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/auth/screens/login.dart';
import 'package:flutter_application_1/navigation/home.dart';
import 'package:flutter_application_1/navigation/navigation.dart';
import 'package:flutter_application_1/navigation/profile.dart';
import 'package:flutter_application_1/navigation/reservaciones.dart';
import 'package:flutter_application_1/navigation/top.dart';
import 'package:flutter_application_1/widgets/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/menu': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/top': (context) => const Top(),
        '/reservaciones': (context) => const Reservaciones(),
        '/perfil': (context) => const Perfil(),
        
      },
      
    );
  }
}
