import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter
import 'contador.dart'; // Importa o arquivo contador.dart

class contador extends StatelessWidget { // Define uma classe chamada contador que estende StatelessWidget
  const contador({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) { // Método que constrói a interface do widget
    return MaterialApp( // Retorna um MaterialApp, que é um widget que configura a aplicação
      title: 'Flutter Demo', // Define o título da aplicação
      theme: ThemeData( // Define o tema da aplicação
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Define o esquema de cores a partir de uma semente
        useMaterial3: true, // Define o uso do Material 3
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // Define o widget MyHomePage como a tela inicial da aplicação
    );
  }
}

class MyHomePage extends StatefulWidget { // Define uma classe chamada MyHomePage que estende StatefulWidget
  const MyHomePage({super.key, required this.title}); // Construtor da classe

  final String title; // Título da página inicial

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Cria e retorna o estado associado ao widget MyHomePage
}

class _MyHomePageState extends State<MyHomePage> { // Define uma classe privada chamada _MyHomePageState que estende State<MyHomePage>
  int _counter = 0; // Variável para armazenar o valor do contador

  void _incrementCounter() { // Método para incrementar o contador
    setState(() { // Atualiza o estado do widget
      _counter++; // Incrementa o contador
    });
  }

  void _menos() { // Método para decrementar o contador
    setState(() { // Atualiza o estado do widget
      _counter--; // Decrementa o contador
    });
  }

  @override
  Widget build(BuildContext context) { // Método que constrói a interface do widget
    return Scaffold( // Retorna um Scaffold, que é um widget de layout básico para a maioria das páginas do aplicativo
      appBar: AppBar( // Define a barra de aplicativos
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Define a cor de fundo da barra de aplicativos
        title: Text(widget.title), // Define o título da barra de aplicativos
      ),
      body: Center( // Centraliza o conteúdo da página
        child: Column( // Layout de coluna para organizar os widgets verticalmente
          mainAxisAlignment: MainAxisAlignment.center, // Alinha os widgets verticalmente ao centro
          children: <Widget>[ // Lista de widgets filhos da coluna
            const Text( // Widget de texto constante
              'You have pushed the button this many times:', // Texto fixo
            ),
            Text( // Widget de texto para exibir o valor do contador
              '$_counter', // Texto dinâmico obtido da variável do contador
              style: Theme.of(context).textTheme.headlineMedium, // Define o estilo do texto com base no tema
            ),
            Row( // Layout de linha para organizar os botões horizontalmente
              mainAxisAlignment: MainAxisAlignment.center, // Alinha os botões horizontalmente ao centro
              children: [ // Lista de widgets filhos da linha
                ElevatedButton( // Botão elevado para incrementar o contador
                  onPressed: _incrementCounter, // Define a função a ser executada quando o botão for pressionado
                  child: const Icon(Icons.add), // Ícone do botão
                ),
                ElevatedButton( // Botão elevado para decrementar o contador
                  onPressed: _menos, // Define a função a ser executada quando o botão for pressionado
                  child: const Icon(Icons.remove), // Ícone do botão
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
