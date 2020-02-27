import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:iffar/pages/Calendar/CalendarPage.dart';
import 'package:iffar/pages/Knowing/KnowingPage.dart';
import 'package:iffar/pages/Politics/Politics.dart';
import 'package:iffar/pages/Program/ProgramPage.dart';
import 'package:iffar/pages/ProgramDPE/ProgramDPE.dart';
import 'package:iffar/pages/Records/Records.dart';
import 'package:iffar/pages/Regulation/Regulation.dart';
import 'package:iffar/pages/System/System.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/marca_svs_l.png'),
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
              ),
            ),
            _navLinks(
              context,
              "Conhecendo o IFFar",
              "Historia, Cursos e Organograma",
              KnowingPage(),
            ),
            ListTile(
              title: Text("Políticas de Assistência estudantil"),
              subtitle: Text("Regulamentos, Programas e Políticas"),
//              trailing: Icon(
//                Icons.arrow_downward,
//                color: Colors.green,
//              ),
            ),
            _navLinks(
              context,
              "Regulamentos",
              "Auxílios, moradia, convivência e concessão",
              Regulation(),
            ),
            _navLinks(
              context,
              "Programas",
              "Nutricional, Apoio e Lazer",
              ProgramPage(),
            ),
            _navLinks(
              context,
              "Políticas",
              "Saúde, inclusão, ações e contra violência",
              Politics(),
            ),
            _navLinks(
              context,
              "Calendário Acadêmico",
              "Calendários letivos",
              CalendarPage(),
            ),
            _navLinks(
              context,
              "Programa de Permanência e Êxito",
              "Quadro de ações",
              ProgramDPE(),
            ),
            _navLinks(
              context,
              "Sistemas",
              "Biblioteca, atividades e cardápio",
              System(),
            ),
            _navLinks(
              context,
              "Setor de Registros Acadêmicos",
              "Link de acesso aos documentos",
              Records(),
            ),
          ],
        ),
      ),
    );
  }

  _navLinks(
      BuildContext context,
      String title,
      String subtitle,
      Widget route,
      ) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(
        Icons.arrow_forward,
        color: Colors.green,
      ),
      dense: true,
      onTap: () {
        prefix0.Navigator.pop(context);
        prefix0.Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return route;
            },
          ),
        );
      },
    );
  }
}