import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Itens {
  final String nome;
  final String imagem;
  final String comentario;

  Itens(this.nome, this.imagem, this.comentario);
}

class JsPage extends StatefulWidget {
  @override
  _JsPageState createState() => _JsPageState();
}

class _JsPageState extends State<JsPage> {
  final Itenss = <Itens>[
    Itens(
      "Nosso primeiro cliente externo, utlizando Bootstrap!",
      "images/lucas.JPG",
      'Lucas Nutricionista',
    ),
    Itens(
      "E iniciamos uma nova jornada pela interatividade...",
      "images/calcjs.JPG",
      "Adicionamos campos e cálculos",
    ),
    Itens(
      "...pela acessibilidade...",
      "images/libras.JPG",
      'Leitor de libras',
    ),
    Itens(
      "...e pela responsividade!",
      "images/resp.JPG",
      'Compatível com Mobile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Javascript'),
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
