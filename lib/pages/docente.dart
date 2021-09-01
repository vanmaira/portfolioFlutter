import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Itens {
  final String nome;
  final String imagem;
  final String comentario;

  Itens(this.nome, this.imagem, this.comentario);
}

class Docente extends StatefulWidget {
  @override
  _DocenteState createState() => _DocenteState();
}

class _DocenteState extends State<Docente> {
  final Itenss = <Itens>[
    Itens(
      "Willian",
      "images/will.jpeg",
      'Pura Simpatia',
    ),
    Itens(
      "Leidiane",
      "images/leidi.jpeg",
      "Desafio!",
    ),
    Itens(
      "Filipe",
      "images/filipe.jpeg",
      'Como uma onda...SQN!',
    ),
    Itens(
      "Almir",
      "images/almir.jpeg",
      'Mar de tranquilidade...e mistério!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Equipe Docente BCW3'),
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
                    height: 400,
                  ),
                  Text(
                    "${e.comentario}",
                    style: textStyles.headline5
                        ?.copyWith(color: Color(0xFF757575)),
                  ),
                ],
              )).toList(),
          options: CarouselOptions(
            height: 1000,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
