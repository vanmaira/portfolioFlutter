import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Itens {
  final String nome;
  final String imagem;
  final String comentario;

  Itens(this.nome, this.imagem, this.comentario);
}

class React extends StatefulWidget {
  @override
  _ReactState createState() => _ReactState();
}

class _ReactState extends State<React> {
  final Itenss = <Itens>[
    Itens(
      "Início de um sonho: Codar um aplicativo mobile",
      "images/react1.jpeg",
      'Aplicativo básico',
    ),
    Itens(
      "Com muita dedicação, construímos nossos apps",
      "images/reactcalc.jpeg",
      "Interação e efeitos visuais",
    ),
    Itens(
      "E aplicamos todo nosso esforço e conhecimento",
      "images/mili.JPG",
      'Banco de dados: veja vídeo no menu',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('React Native'),
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
