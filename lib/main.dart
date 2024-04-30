import 'package:flutter/material.dart';
import 'contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListaPage(),
    );
  }
}

class ListaPage extends StatefulWidget {
  const ListaPage({Key? key}) : super(key: key);

  @override
  State<ListaPage> createState() => _ListaPageState();
}

int aux = 0;

class _ListaPageState extends State<ListaPage> {
  //lista icones de favorito
  List<IconData> icones = List.filled(contatos.length, Icons.favorite_border);
  //lista de imagens
  List<String> imagens = ['https://i.postimg.cc/MKtjmVT7/bg-f8f8f8-flat-750x-075-f-pad-750x1000-f8f8f8.jpg', 
  'https://i.postimg.cc/mgD1Xkz0/6cp5aeyoi.jpg', 
  'https://media.tenor.com/IgPcfFP9UesAAAAe/free-smiley.png',
  'https://i.postimg.cc/bwBDKP1d/2eb582ae4ef4a205cb50851322e48deb.jpg',
  'https://i.postimg.cc/QMK9Dzqm/sticker-fan-10750020-o.webp'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contatos Favoritos: $aux')),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imagens[index]),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
            trailing: IconButton(
              icon: Icon(icones[index]),
              onPressed: () {
                setState(() {
                  icones[index] = (icones[index] == Icons.favorite)
                      ? Icons.favorite_border
                      : Icons.favorite;
                  if (icones[index] == Icons.favorite) {
                    aux += 1;
                  } else {
                    aux -= 1;
                  }
                });
              },
            ),
          );
        },
      ),
    );
  }
}
