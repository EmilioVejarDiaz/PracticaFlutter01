import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/auth/screens/create_account.dart';
import 'package:flutter_application_1/modules/auth/screens/login.dart';
import 'package:flutter_application_1/navigation/home.dart';
import 'package:flutter_application_1/navigation/navigation.dart';
import 'package:flutter_application_1/navigation/profile.dart';
import 'package:flutter_application_1/navigation/reservaciones.dart';
import 'package:flutter_application_1/navigation/top.dart';
import 'package:flutter_application_1/widgets/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Asegúrate de importar las opciones generadas por FlutterFire CLI

void main() async {
  // Asegúrate de inicializar los bindings antes de ejecutar Firebase.initializeApp()
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa Firebase con las opciones correctas para la plataforma actual
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Error inicializando Firebase: $e');
  }
  
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
        '/register': (context) => const CreateAccount(),
        '/menu': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/top': (context) => const Top(),
        '/reservaciones': (context) => const Reservaciones(),
        '/perfil': (context) => const Perfil(),
      },
    );
  }
}
