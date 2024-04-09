import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter
import 'imc.dart'; // Importa o arquivo imc.dart

class imc extends StatelessWidget { // Define uma classe chamada imc que estende StatelessWidget
  const imc({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) { // Método que constrói a interface do widget
    return MaterialApp( // Retorna um MaterialApp, que é um widget que configura a aplicação
      debugShowCheckedModeBanner: false, // Configuração para ocultar a faixa de depuração no canto superior direito do aplicativo
      home: const Home(), // Define o widget Home como a tela inicial da aplicação
    );
  }
}

class Home extends StatefulWidget { // Define uma classe chamada Home que estende StatefulWidget
  const Home({super.key}); // Construtor da classe

  @override
  State<Home> createState() => _HomePageState(); // Cria e retorna o estado associado ao widget Home
}

class _HomePageState extends State<Home> { // Define uma classe privada chamada _HomePageState que estende State<Home>
  TextEditingController usuarioController = new TextEditingController(); // Controlador para o campo de texto do usuário
  TextEditingController senhaController = new TextEditingController(); // Controlador para o campo de texto da senha
  String _textoInfo = "Informe seus dados"; // String para exibir informações na interface

  void _cadastrar(){ // Método para lidar com o evento de cadastro
    setState(() { // Atualiza o estado do widget
      String user = usuarioController.text; // Obtém o texto do campo de texto do usuário
      String senha = senhaController.text; // Obtém o texto do campo de texto da senha
      if(user.isEmpty || senha.isEmpty){ // Verifica se algum dos campos está vazio
        _textoInfo = "Erro ao cadastrar usuário"; // Define a mensagem de erro
      }
      else{
        _textoInfo = "Cadastrado com sucesso"; // Define a mensagem de sucesso
      }
    });
  }

  void _limpar_Tela() { // Método para limpar os campos de texto
    usuarioController.text = ""; // Limpa o campo de texto do usuário
    senhaController.text = ""; // Limpa o campo de texto da senha
    setState(() { // Atualiza o estado do widget
      _textoInfo = "Informe seus dados"; // Define a mensagem padrão
    });
  }

  @override
  Widget build(BuildContext context) { // Método que constrói a interface do widget
    return Scaffold( // Retorna um Scaffold, que é um widget de layout básico para a maioria das páginas do aplicativo
      appBar: AppBar( // Define a barra de aplicativos
        title: Text("Cadastro Usuario"), // Define o título da barra de aplicativos
        centerTitle: true, // Centraliza o título na barra de aplicativos
        backgroundColor: Colors.purple, // Define a cor de fundo da barra de aplicativos
        actions: <Widget>[ // Define as ações da barra de aplicativos
          IconButton( // Adiciona um botão de ícone à barra de aplicativos
              onPressed: _limpar_Tela, // Define a função a ser executada quando o botão for pressionado
              icon: Icon(Icons.refresh)) // Define o ícone do botão
        ],
      ),
      body: SingleChildScrollView( // Corpo da tela com um rolamento vertical
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // Define o preenchimento interno do corpo

        child: Column( // Layout de coluna para organizar os widgets verticalmente
          crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os widgets filhos ao esticamento horizontal
          children: <Widget>[ // Lista de widgets filhos da coluna
            const Icon( // Widget de ícone
              Icons.person_outline, // Ícone de pessoa
              size: 129.0, // Tamanho do ícone
              color: Colors.purple, // Cor do ícone
            ),
            TextField( // Widget de campo de texto para o usuário
              keyboardType: TextInputType.text, // Define o tipo de teclado para texto
              decoration: InputDecoration( // Decoração do campo de texto
                  labelText: "usuario", // Rótulo do campo de texto
                  labelStyle: TextStyle(color: Colors.blue) // Estilo do rótulo
              ),
              textAlign: TextAlign.center, // Alinha o texto ao centro
              style: TextStyle(fontSize: 25.0), // Estilo do texto
              controller: usuarioController, // Controlador para manipular o texto do campo
            ),
            TextField( // Widget de campo de texto para a senha
              keyboardType: TextInputType.text, // Define o tipo de teclado para texto
              decoration: InputDecoration( // Decoração do campo de texto
                  labelText: "senha", // Rótulo do campo de texto
                  labelStyle: TextStyle(color: Colors.blue) // Estilo do rótulo
              ),
              textAlign: TextAlign.center, // Alinha o texto ao centro
              style: TextStyle(fontSize: 25.0), // Estilo do texto
              obscureText: true, // Esconde o texto digitado (para senhas)
              controller: senhaController, // Controlador para manipular o texto do campo
            ),
            Padding( // Widget de preenchimento para adicionar espaçamento entre widgets
              padding: const EdgeInsets.only(top: 10, bottom: 10), // Define o preenchimento interno
              child: SizedBox( // Widget de tamanho fixo
                height:50.0, // Altura fixa
                child: ElevatedButton( // Botão elevado
                    onPressed: _cadastrar, // Define a função a ser executada quando o botão for pressionado
                    child: const Text("cadastrar") // Texto exibido no botão
                ),
              ),
            ),
            Text( // Widget de texto para exibir informações dinâmicas
              _textoInfo, // Texto a ser exibido
              textAlign: TextAlign.center, // Alinha o texto ao centro
              style: TextStyle( // Estilo do texto
                  color: Colors.blue, // Cor do texto
                  fontSize: 25.0 // Tamanho do texto
              ),
            )
          ],
        ),
      ),
    );
  }
}
