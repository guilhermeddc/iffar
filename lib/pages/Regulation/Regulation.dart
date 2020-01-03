import 'package:flutter/material.dart';
import 'package:iffar/pages/Regulation/screens/Coexistence.dart';
import 'package:iffar/pages/Regulation/screens/Help.dart';
import 'package:iffar/pages/Regulation/screens/Concession.dart';
import 'package:iffar/pages/Regulation/screens/Home.dart';

class Regulation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Regulamentos"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Auxílios",
              ),
              Tab(
                text: "Moradia",
              ),
              Tab(
                text: "Convivência",
              ),
              Tab(
                text: "Concessão",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Help(),
          Home(),
          Coexistence(),
          Concession(),
        ]),
      ),
    );
  }
}
