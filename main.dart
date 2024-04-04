import 'package:flutter/material.dart';
import 'principal1.dart';
import 'imc2.dart';
import 'contador3.dart';
import 'cadastrousuario4.dart';
import 'cadastroproduto5.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rotas nomeadas',
        initialRoute: '/',
        routes: {
          '/': (context) => Principal1(),
          '/imc': (context) => const imc2(),
          '/contador': (context) => const contador3(),
          '/cadastrousuario': (context) => const cadastrousuario4(),
          '/cadastroproduto': (context) => const cadastroproduto5(),
        }
    );
  }
}
