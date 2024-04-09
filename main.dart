import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter
import 'principal1.dart'; // Importa o arquivo principal1.dart
import 'imc2.dart'; // Importa o arquivo imc2.dart
import 'contador3.dart'; // Importa o arquivo contador3.dart
import 'cadastrousuario4.dart'; // Importa o arquivo cadastrousuario4.dart
import 'cadastroproduto5.dart'; // Importa o arquivo cadastroproduto5.dart

void main() { // Função principal que inicia a aplicação Flutter
  runApp(const MyApp()); // Executa o aplicativo encapsulado em um widget MyApp
}

class MyApp extends StatelessWidget { // Define uma classe MyApp que estende StatelessWidget
  const MyApp({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) { // Método que constrói a interface do widget
    return MaterialApp( // Retorna um MaterialApp, que é um widget que configura a aplicação
        debugShowCheckedModeBanner: false, // Configuração para ocultar a faixa de depuração no canto superior direito do aplicativo
        title: 'Rotas nomeadas', // Define o título da aplicação
        initialRoute: '/', // Define a rota inicial da aplicação
        routes: { // Define um mapa de rotas nomeadas
          '/': (context) => Principal1(), // Rota nomeada para a tela principal1
          '/imc': (context) => const imc2(), // Rota nomeada para a tela imc2
          '/contador': (context) => const contador3(), // Rota nomeada para a tela contador3
          '/cadastrousuario': (context) => const cadastrousuario4(), // Rota nomeada para a tela cadastrousuario4
          '/cadastroproduto': (context) => const cadastroproduto5(), // Rota nomeada para a tela cadastroproduto5
        }
    );
  }
}
