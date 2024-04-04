import 'package:flutter/material.dart';
import 'cadastroproduto.dart';

class cadastroproduto5 extends StatelessWidget {
  const cadastroproduto5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController descricaoController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _cadastrar(){
    setState(() {
      String user = nomeController.text;
      String senha = descricaoController.text;
      if(user.isEmpty || senha.isEmpty){
        _textoInfo = "Erro ao cadastrar usuario";
      }
      else{
        _textoInfo = "Cadastrado com sucesso";
      }
    });
  }

  void _limpar_Tela() {
    nomeController.text = "";
    descricaoController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro nome"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh))
        ],
      ),


      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 129.0,
              color: Colors.purple,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "usuario",
                  labelStyle: TextStyle(color: Colors.blue)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "senha",
                  labelStyle: TextStyle(color: Colors.blue)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              obscureText: true,
              controller: descricaoController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height:50.0,
                child: ElevatedButton(
                    onPressed: _cadastrar,
                    child: const Text("cadastrar")
                ),
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0
              ),
            )
          ],
        ),
      ),
    );
  }
}
