import 'package:iffar/widgets/LinkButton.dart';
import 'package:iffar/widgets/TitleList.dart';
import 'package:iffar/widgets/TitleScreen.dart';
import 'package:flutter/material.dart';

class SIGAA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            TitleScreen("SIGAA – Atividades acadêmicas", 30),
            Icon(
              Icons.timeline,
              size: 200,
              color: Colors.green,
            ),
            TitleList("Entre no link a baixo!")
          ],
        ),
        floatingActionButton: LinkButton("https://sig.iffarroupilha.edu.br/sigaa/public/home.jsf"),
      ),
    );
  }
}
