import 'package:flutter/material.dart';
import 'package:iffar/widgets/ItemList.dart';
import 'package:iffar/widgets/LinkButton.dart';
import 'package:iffar/widgets/TitleList.dart';
import 'package:iffar/widgets/TitleScreen.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ORGANIZADORES (CRÉDITO)',
        ),
      ),
      body: ListView(
        children: <Widget>[
          TitleScreen("“CAE na rede”", 30),
          _textHistory(
              """     No IFFar campus São Vicente do Sul, as políticas de assistência estudantil desenvolvem-se de acordo com o Programa Nacional de Assistência Estudantil (PNAES), onde os seguintes aspectos devem ser contemplados:"""),
          ItemList("Moradia estudantil;"),
          ItemList("Segurança alimentar e nutricional;"),
          ItemList("Auxílio financeiro aos estudantes; "),
          ItemList("Atenção à Saúde; "),
          ItemList("Promoção do esporte, cultura e lazer; "),
          ItemList("Apoio didático-pedagógico; "),
          ItemList(
              "Acesso, participação e aprendizagem de estudantes com deficiência, transtornos globais do desenvolvimento e altas habilidades e superdotação."),
          _textHistory(
              """     As políticas de assistência estudantil, enquanto mecanismo de direito social, devem prover as condições necessárias para que o aluno possa se desenvolver integralmente, promovendo a inclusão social, a produção de conhecimento, o acompanhamento pedagógico, condições adequadas para os estudos sempre levando em consideração a qualidade de vida dos estudantes."""),
          _textHistory(
              """     Sendo assim, as políticas de assistência estudantil, além de disponibilizar recursos financeiros, elas também desenvolvem ações pensando na formação integral dos alunos, onde possam ter a atenção à saúde, o acompanhamento pedagógico, a cultura, o esporte e lazer contemplados, com a finalidade de possibilitar a democratização do ensino e reduzir as desigualdades sociais, onde os alunos possam ingressar, permanecer na instituição e obter êxito nos estudos."""),
          _textHistory(
              """     Nesse sentido, o aplicativo CAE na rede, tem como função facilitar o acesso às informações da assistência estudantil desenvolvidas no IFFar campus São Vicente do Sul, com o objetivo de possibilitar mais autonomia na busca dessas informações e fortalecer o sentimento de pertencimento com a instituição."""),
          TitleList("Idealizadora"),
          ItemList("Jaqueline Dutra de Oliveira"),
          ItemList("Mestranda em Educação Profissional e Tecnológica"),
          ItemList("e-mail: jaqueline.oliveira@iffarroupilha.edu.br"),
          TitleList("Colaboradores"),
          ItemList("Prof. Dr. Renato Xavier Cotuinho"),
          ItemList("Orientador"),
          ItemList("e-mail: renato.coutinho@iffarroupilha.edu.br"),
          SizedBox(
            height: 20,
          ),
          ItemList("Guilherme Rodrigues Gonçalves"),
          ItemList("Desenvolvedor de aplicativos"),
          ItemList("e-mail: guilhermeddc@gmail.com"),
          SizedBox(
            height: 20,
          ),
          TitleScreen("De sua opnião sobre o Aplicativo:", 30),
          Icon(
            Icons.arrow_forward,
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      floatingActionButton: LinkButton("https://forms.gle/LM5GEr7ERmsezKbPA"),
    );
  }

  Padding _textHistory(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            textAlign: TextAlign.justify,
            textWidthBasis: TextWidthBasis.parent,
            style: TextStyle(wordSpacing: 1.5),
          ),
        ),
      ),
    );
  }
}
