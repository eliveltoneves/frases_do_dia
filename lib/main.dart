import 'package:flutter/material.dart';
import 'dart:math';

void main(){
   runApp(const MaterialApp(
    home: Home(),
     debugShowCheckedModeBanner: false,
   ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _frases = [
    "Eu não pago por ternos. Meus ternos são por conta da casa, ou a casa pega fogo",
    "A convicção traz emoção, a inimiga da oratória",
    "Se você fizer a escolha errada, você não verá as 11h44",
    "Bom gosto é para pessoas que não podem pagar por safiras",
    "Quando o destino deixa algo valioso em seu colo, você não simplesmente joga no lixo",
    "Eu sou apenas um excelente exemplo do que um homem trabalhador pode conquistar",
    "Eu penso para que você não precise pensar",
    "Não é uma boa ideia olhar para Tommy Shelby da forma errada",
    "Eu fiz acordos com homens em quem eu confio. Se eu morrer, você vai morrer",
    "Você não negocia quando está na pior"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _geraFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                ),
                onPressed: _geraFrase,
                child: const Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
