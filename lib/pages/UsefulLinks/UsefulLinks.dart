
import 'package:flutter/material.dart';
import 'package:iffar/widgets/ListLink.dart';
import 'package:iffar/widgets/TitleList.dart';
import 'package:iffar/widgets/TitleScreen.dart';

class UsefulLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Links Uteis"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TitleScreen("EDITAIS DA ASSISTÊNCIA ESTUDANTIL", 30),
            TitleList("AUXÍLIOS DA ASSISTÊNCIA ESTUDANTIL"),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/15548-chamadas-da-sele%C3%A7%C3%A3o-dos-estudantes-para-os-aux%C3%ADlios-da-assist%C3%AAncia-estudantil-perman%C3%AAncia-e-aux%C3%ADlio-transporte",
              "Edital nº 093/2019 - Chamadas da Seleção dos Estudantes para os Auxílios da Assistência Estudantil: Permanência e Auxílio Transporte",
            ),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/16391-edital-n%C2%BA-020-2020-concess%C3%A3o-de-aux%C3%ADlio-perman%C3%AAncia-da-assist%C3%AAncia-estudantil-do-iffar-2020",
              "Edital nº 020/2020 - Concessão de Auxílio Permanência da Assistência Estudantil do IFFar/2020",
            ),
            TitleList("BOLSAS DE ATIVIDADES DE APOIO EDUCACIONAL"),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/15416-resultado-dos-recursos-e-resultado-final-referente-ao-edital-n%C2%BA-083-2019-bolsa-de-atividade-de-apoio-educacional",
              "Resultado dos recursos e resultado final referente ao Edital nº 083/2019 - Bolsa de Atividade de Apoio Educacional",
            ),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/15383-resultado-preliminar-referente-ao-edital-n%C2%BA-083-2019-bolsa-de-atividade-de-apoio-educacional",
              "Resultado Preliminar referente ao Edital nº 083/2019 - Bolsa de Atividade de Apoio Educacional",
            ),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/15219-edital-n%C2%BA-083-2019-sele%C3%A7%C3%A3o-de-estudantes-para-as-bolsas-de-atividades-de-apoio-educacional",
              "Edital nº 083/2019 - Seleção de estudantes para as Bolsas de Atividades de Apoio Educacional",
            ),
            TitleList("MORADIA"),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/16070-resultado-dos-recursos-e-resultado-final-do-edital-n%C2%BA-089-2019-sele%C3%A7%C3%A3o-de-estudantes-dos-cursos-integrados-para-moradia-estudantil-2020-1",
              "Resultado dos recursos e resultado final do Edital nº 089/2019 - Seleção de estudantes dos Cursos Integrados para Moradia Estudantil 2020/1",
            ),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/16035-resultado-preliminar-do-edital-n%C2%BA-089-2019-sele%C3%A7%C3%A3o-de-estudantes-dos-cursos-integrados-para-moradia-estudantil-2020-1",
              "Resultado preliminar do Edital nº 089/2019 - Seleção de estudantes dos Cursos Integrados para Moradia Estudantil 2020/1",
            ),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/15911-lista-de-inscritos-referente-ao-edital-n%C2%BA-089-2019-sele%C3%A7%C3%A3o-de-estudantes-dos-cursos-integrados-para-moradia-estudantil-2020-1",
              "Lista de inscritos referente ao Edital nº 089/2019 - Seleção de estudantes dos Cursos Integrados para Moradia Estudantil 2020/1",
            ),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/15739-retifica%C3%A7%C3%A3o-do-edital-n%C2%BA-089-2019-sele%C3%A7%C3%A3o-de-estudantes-dos-cursos-integrados-para-moradia-estudantil-2020-1",
              "Retificação do Edital nº 089/2019 - Seleção de estudantes dos Cursos Integrados para Moradia Estudantil 2020/1",
            ),
            LinkList(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/15435-edital-n%C2%BA-089-2019-sele%C3%A7%C3%A3o-de-estudantes-dos-cursos-integrados-para-moradia-estudantil-2020-1",
              "Edital nº 089/2019 - Seleção de estudantes dos Cursos Integrados para Moradia Estudantil 2020/1",
            ),
          ],
        ),
      ),
    );
  }
}
