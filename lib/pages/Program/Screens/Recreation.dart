import 'package:iffar/widgets/ImageScreen.dart';
import 'package:iffar/widgets/ItemList.dart';
import 'package:iffar/widgets/LinkButton.dart';
import 'package:iffar/widgets/TitleList.dart';
import 'package:iffar/widgets/TitleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Recreation extends StatefulWidget {
  @override
  _RecreationState createState() => _RecreationState();
}

class _RecreationState extends State<Recreation> {
  bool _isLoading = false, _isInit = true;
  PDFDocument document;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: _isInit
                    ? ListView(
                        children: <Widget>[
                          TitleScreen(
                              "Promoção do esporte, cultura e lazer", 30),
                          ImageScreen("lazer.jpg"),
                          TitleList("Promoção do esporte, cultura e lazer"),
                          ItemList(
                              "Promover elementos da cultura regional e discussões sobre as diferenças culturais;"),
                          ItemList(
                              "Possibilitar o acesso às atividades de esporte e lazer;"),
                          ItemList(
                              "Realizar, em datas comemorativas, encontro de confraternização."),
                        ],
                      )
                    : _isLoading
                        ? Center(
                            child: ListView(
                              children: <Widget>[
                                CircularProgressIndicator(),
                                SizedBox(height: 70.0),
                              ],
                            ),
                          )
                        : PDFViewer(
                            document: document,
                          ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              height: 65,
              width: 1000,
              color: Colors.green,
              child: Text(
                "Esporte, cultura e lazer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            LinkButton(""),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              heroTag: 'btn1',
              child: Icon(Icons.book),
              onPressed: () {
                _loadFronAsstes();
              },
            ),
          ],
        ),
      ),
    );
  }

  _loadFronAsstes() async {
    setState(() {
      _isInit = false;
      _isLoading = true;
    });
    document = await PDFDocument.fromAsset(
        "assets/pdf/ProgramaPromocaoEsporteCulturaLazer.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
