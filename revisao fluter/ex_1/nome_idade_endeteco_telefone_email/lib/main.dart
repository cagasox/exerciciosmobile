import 'package:flutter/material.dart';

void main() {
  runApp(dados_pesoais());
}

class dados_pesoais extends StatelessWidget {
  const dados_pesoais({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: campotexto(),
    );
  }
}

class campotexto extends StatefulWidget {
  const campotexto({super.key});

  @override
  State<campotexto> createState() => _campotextoState();
}

class _campotextoState extends State<campotexto> {
  TextEditingController ctexto = TextEditingController();
  TextEditingController ctexto1 = TextEditingController();
  TextEditingController ctexto2 = TextEditingController();
  TextEditingController ctexto3 = TextEditingController();
  TextEditingController ctexto4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dados pesosais",)
        ),
        body: Column(children: [
          TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(labelText: "Digite seu nome"),controller: ctexto,
        ),TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: "digite sua idade"),controller: ctexto1,
        ),TextField(
        keyboardType: TextInputType.streetAddress,
        decoration: InputDecoration(labelText: "coloque seu endereço"),controller: ctexto2,
        ),TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(labelText: "coloque seu email"),controller: ctexto3,
        ),TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(labelText: "coloque seu telefone"),controller: ctexto4,
        ),ElevatedButton(onPressed: (){
          print(ctexto.text);
          print(ctexto1.text);
          print(ctexto2.text);
          print(ctexto3.text);
          print(ctexto4.text);
        }, child: Text("enviar"))
        ]),
    );
  }
}