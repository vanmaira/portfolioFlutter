import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Itens {
  final String nome;
  final String imagem;
  final String comentario;

  Itens(this.nome, this.imagem, this.comentario);
}

class FlutterPage extends StatefulWidget {
  @override
  _FlutterPageState createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  final Itenss = <Itens>[
    Itens(
      "Nova linguagem, novo desafio!",
      "images/sad.jpeg",
      'Aprendendo Dart',
    ),
    Itens(
      "Ainda estamos aprendendo, mas cada dia melhores",
      "images/flu1.JPG",
      "Flutter e seus desafios",
    ),
    Itens(
      "Logo apresentaremos um super projeto",
      "images/flu3.JPG",
      'Aguarde!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Center(
        child: CarouselSlider(
          items: Itenss.map((e) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    e.nome,
                    style: textStyles.headline4,
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    e.imagem,
                    width: 400,
                    height: 350,
                  ),
                  Text(
                    "${e.comentario}",
                    style: textStyles.headline5
                        ?.copyWith(color: Color(0xFF757575)),
                  ),
                ],
              )).toList(),
          options: CarouselOptions(
            height: 800,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
