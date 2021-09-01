import 'package:flutter/material.dart';
import 'package:perfil/pages/flutter.dart';
import 'package:perfil/pages/html.dart';
import 'package:perfil/pages/reactive.dart';
import 'package:perfil/pages/video.dart';
import 'package:url_launcher/url_launcher.dart';

import 'docente.dart';
import 'javascript.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SoulCode Academy'),
        actions: [
          IconButton(
            onPressed: () async {
              var phone = "+5514982039248";
              launch("tel://$phone");
              var whatsappUrl = "https://web.whatsapp.com//send?phone=$phone";
              await canLaunch(whatsappUrl)
                  ? launch(whatsappUrl)
                  : print("Erro!");
            },
            icon: Icon(Icons.call),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Tecnologias e Linguagens',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF3F51B5), Colors.black])),
            ),
            ListTile(
              leading: Icon(Icons.filter_1),
              title: Text('HTML e CSS'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HtmlPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.filter_2),
              title: Text('Javascript'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => JsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.filter_3),
              title: Text('React Native'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => React()));
              },
            ),
            ListTile(
              leading: Icon(Icons.filter_4),
              title: Text('Video App Mototaxista'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Video()));
              },
            ),
            ListTile(
              leading: Icon(Icons.filter_5),
              title: Text('Flutter'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlutterPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.filter_6),
              title: Text('Equipe Docente'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Docente()));
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Text(
                'Olá, aqui você vai conhecer minha trajetória enquanto aluna Front-end/Mobile - Turma BCW3',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              CircleAvatar(
                radius: 87,
                backgroundColor: Color(0xFF3F51B5),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                  radius: 80,
                ),
              ),
              SizedBox(height: 10),
              Text('Vanessa Maíra dos Santos', style: TextStyle(fontSize: 24)),
              Text(
                'Acesse o menu e confira!',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Column(
                children: <Widget>[
                  Image.asset('images/pre-logo.png', fit: BoxFit.fill),
                  new InkWell(
                    child: new Text('Acesse e conheça!'),
                    onTap: () => launch('https://soulcodeacademy.org/'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
