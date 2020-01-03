import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iffar/pages/Knowing/Screens/Chartspage.dart';
import 'package:iffar/pages/Knowing/Screens/CoursePage.dart';
import 'package:iffar/pages/Knowing/Screens/HistoryPage.dart';

class KnowingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Conhecendo IFFar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "História",
              ),
              Tab(
                text: "Organograma",
              ),
              Tab(
                text: "Cursos",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          HistoryPage(),
          ChartsPage(),
          CoursePage(),
        ]),
      ),
    );
  }
}
