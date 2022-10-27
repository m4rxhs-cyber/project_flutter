// Aqui é a importação do material para conseguir configurar o app
import 'package:flutter/material.dart';

// Esta parte é onde irá o aplicativo com todas as configurações
void main() => runApp(MyApp());

//Classe responsável por montar o aplicativo
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Neemias',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

//Classe responsável por montar a tela principal
class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  //Esse widget é onde montará o body com os cards
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu aplicativo'),
      ),
      body: ListView(
        children: [
          //Este é o primeiro card que aparece
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Primeiro Card'),
                  subtitle: Text(
                    'Texto secundário do primeiro card',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'O chewbacca esteve aqui. Look to back',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Ação 1'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // onPressed serve para criar uma ação ao pressionar um botão ou item na tela
                      },
                      child: const Text('Ação 2'),
                    ),
                  ],
                ),
                Image.asset('assets/card-sample-image.jpg'),
              ],
            ),
          ),

          //Este é o segundo card
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Segundo Card'),
                  subtitle: Text(
                    'Texto Secundário do segundo card',
                    style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Exemplo de texto aqui. Cadê os meus dois pontos?',
                    style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                  ),
                ),

                //O ButtonBar serve para criar uma barra onde será inserido os botões
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    // O ElevateButton serve para inserir um botão na página
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Ação 1'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Ação 2'),
                    ),
                  ],
                ),
                Image.asset(
                    'uma imagem aqui'), // O Image.asset serve para inserir imagens no seu widget
              ],
            ),
          ),
        ],
      ),
    );
  }
}
