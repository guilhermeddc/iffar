import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:iffar/widgets/ImageScreen.dart';
import 'package:iffar/widgets/ItemList.dart';
import 'package:iffar/widgets/TitleList.dart';
import 'package:iffar/widgets/TitleScreen.dart';
import 'package:flutter/material.dart';

class ProgramDPE extends StatefulWidget {
  @override
  _ProgramDPEState createState() => _ProgramDPEState();
}

class _ProgramDPEState extends State<ProgramDPE> {
  bool _isLoading = false, _isInit = true;
  PDFDocument document;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Programa de Permanência e Êxito"
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: _isInit
                    ? ListView(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    TitleScreen("Programa de Permanência e Êxito", 30),
                    ImageScreen("dpe.jpg"),
                    TitleList("Programa de Permanência e Êxito"),
                    ItemList("Propor e assessorar o desenvolvimento de ações específicas que minimizem a influência dos fatores responsáveis pelo processo evasão e retenção;"),
                    ItemList("Instigar o sentimento de pertencimento ao IFFar;"),
                    ItemList("Atuar de forma preventiva nas causas de evasão e retenção."),
                    SizedBox(height: 20.0),
                  ],
                )
                    : _isLoading
                    ? Center(
                  child: CircularProgressIndicator(),
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
                "PERMANÊNCIA E ÊXITO",
                style: TextStyle(color: Colors.white, fontSize: 15,),
              ),
            )
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn1",
              child: Icon(Icons.book),
              onPressed: () {
                _loadFronAssets();
              },
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              heroTag: "btn2",
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
        "assets/pdf/ppe1.pdf");
    setState(() {
      _isLoading = false;
    });
  }

  _loadFronAssets() async {
    setState(() {
      _isInit = false;
      _isLoading = true;
    });
    document = await PDFDocument.fromAsset(
        "assets/pdf/ppe2.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
