import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'colors.dart';

class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => const HomePage(),
      },
      theme: _kShrineTheme,
    );
  }
}

final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePink100,
      onPrimary: kShrineBrown900,
      secondary: kShrineBrown900,
      error: kShrineErrorRed,
      surface: kShrineSurfaceWhite,
      background: kShrineBackgroundWhite,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Rubik',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: kShrineBrown900,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Rubik',
        fontSize: 16,
        color: kShrineBrown900,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Rubik',
        fontSize: 14,
        color: kShrineBrown900,
      ),
    ),
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    primaryColor: kShrinePink100,
  );
}

void main() {
  runApp(const ShrineApp());
}
