import 'home.dart'; // Importa o arquivo home.dart
import 'imc.dart'; // Importa o arquivo imc.dart
import 'contador.dart'; // Importa o arquivo contador.dart
import 'cadastroproduto.dart'; // Importa o arquivo cadastroproduto.dart
import 'cadastrousuario.dart'; // Importa o arquivo cadastrousuario.dart
import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter

class Principal1 extends StatelessWidget { // Define uma classe chamada Principal1 que estende StatelessWidget
  const Principal1({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) { // Método que constrói a interface do widget
    return Scaffold( // Retorna um Scaffold, que é um widget de layout básico para a maioria das páginas do aplicativo
      appBar: AppBar( // Define a barra de aplicativos
        title: Text("MENU"), // Define o título da barra de aplicativos
        centerTitle: true, // Centraliza o título na barra de aplicativos
        backgroundColor: Colors.deepOrangeAccent, // Define a cor de fundo da barra de aplicativos
      ),
      body: SingleChildScrollView( // Corpo da tela com um rolamento vertical
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // Define o preenchimento interno do corpo
        child: Column( // Layout de coluna para organizar os widgets verticalmente
          crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os widgets filhos ao esticamento horizontal
          children: <Widget>[ // Lista de widgets filhos da coluna
            const Icon( // Widget de ícone constante
              Icons.add_business_sharp, // Ícone de negócio
              size: 120.0, // Tamanho do ícone
              color: Colors.deepOrangeAccent, // Cor do ícone
            ),
            Text( // Widget de texto para exibir um título
              "Aplicação Principal", // Texto do título
              textAlign: TextAlign.center, // Alinha o texto ao centro
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0), // Estilo do texto
            ),
            Text( // Widget de texto vazio para adicionar espaço
              "", // Texto vazio
              textAlign: TextAlign.center, // Alinha o texto ao centro
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0), // Estilo do texto
            ),
            Column( // Layout de coluna para organizar os botões verticalmente
              crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os widgets filhos ao esticamento horizontal
              children: <Widget>[ // Lista de widgets filhos da coluna
                ElevatedButton( // Botão elevado para navegar para a tela imc
                  child: const Text("IMC"), // Texto do botão
                  onPressed: () { // Função a ser executada quando o botão for pressionado
                    Navigator.push( // Navega para a próxima tela
                      context,
                      MaterialPageRoute(
                          builder: (context) => const imc()), // Constrói a tela imc
                    );
                  },
                ),
                ElevatedButton( // Botão elevado para navegar para a tela contador
                  child: const Text("Contador"), // Texto do botão
                  onPressed: () { // Função a ser executada quando o botão for pressionado
                    Navigator.push( // Navega para a próxima tela
                      context,
                      MaterialPageRoute(
                          builder: (context) => const contador()), // Constrói a tela contador
                    );
                  },
                ),
                ElevatedButton( // Botão elevado para navegar para a tela cadastrousuario
                  child: const Text("Cadastro Usuario"), // Texto do botão
                  onPressed: () { // Função a ser executada quando o botão for pressionado
                    Navigator.push( // Navega para a próxima tela
                      context,
                      MaterialPageRoute(
                          builder: (context) => const cadastrousuario()), // Constrói a tela cadastrousuario
                    );
                  },
                ),
                ElevatedButton( // Botão elevado para navegar para a tela cadastroproduto
                  child: const Text("Cadastro de produtos"), // Texto do botão
                  onPressed: () { // Função a ser executada quando o botão for pressionado
                    Navigator.push( // Navega para a próxima tela
                      context,
                      MaterialPageRoute(
                          builder: (context) => const cadastroproduto()), // Constrói a tela cadastroproduto
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ), // Botão para executar o cálculo do IMC,
    );
  }
}
