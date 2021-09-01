import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Itens {
  final String nome;
  final String imagem;
  final String comentario;

  Itens(this.nome, this.imagem, this.comentario);
}

class HtmlPage extends StatefulWidget {
  @override
  _HtmlPageState createState() => _HtmlPageState();
}

class _HtmlPageState extends State<HtmlPage> {
  final Itenss = <Itens>[
    Itens(
      "Começamos com o básico em HTML",
      "images/lencois.JPG",
      'Montar layout e inserir imagens',
    ),
    Itens(
      "Aos poucos nossos códigos foram melhorando, e os layouts também!",
      "images/biblio.JPG",
      "Âncoras, menus e efeitos",
    ),
    Itens(
      "Com o CSS nossos sites criaram forma e estilo",
      "images/acai.JPG",
      'Padrão, interação, profissionalismo',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('HTML e CSS'),
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
