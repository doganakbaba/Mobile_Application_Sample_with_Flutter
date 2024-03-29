import 'package:flutter/material.dart';
import 'package:navigation_app/screens/CoursesScreen.dart';
import 'package:navigation_app/screens/ShopScreen.dart';
import 'screens/StateScreen.dart';
import 'screens/ToolsScreen.dart';
import 'screens/registerScreen.dart';
import 'screens/profileScreen.dart';
import 'screens/welcomeScreen.dart';
import 'screens/loginScreen.dart';
import 'screens/homeScreen.dart';
import 'screens/settingsScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahibinden',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/settings': (context) => SettingsScreen(),
        '/emlak': (context) => StateScreen(),
        '/parca': (context) => ToolsScreen(),
        '/kurs' : (context) => CoursesScreen(),
        '/ikinciel' : (context) => ShopScreen()

        
      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
