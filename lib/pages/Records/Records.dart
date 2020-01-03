import 'package:iffar/widgets/LinkButton.dart';
import 'package:iffar/widgets/TitleList.dart';
import 'package:iffar/widgets/TitleScreen.dart';
import 'package:flutter/material.dart';

class Records extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Setor de Registros Acadêmicos"),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              TitleScreen("Registros Acadêmicos", 30),
              Icon(
                Icons.account_balance,
                size: 200,
                color: Colors.green,
              ),
              TitleList(
                  "       A Coordenção de Registros Acadêmicos (CRA) operacionaliza todas as atividades ligadas à vida acadêmica do estudante, desde seu ingresso até sua conclusão do curso."),
            ],
          ),
        ),
        floatingActionButton: LinkButton(
            "https://www.iffarroupilha.edu.br/registro-e-diplomas?layout=item"),
      ),
    );
  }
}
