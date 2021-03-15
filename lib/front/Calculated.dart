import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../back/entreAxecalcul.dart';

class Calculated extends StatelessWidget {
  var nbrDentPignon1;
  var nbrDentPignon2;
  var nbrDentCouroi;

  Calculated({this.nbrDentCouroi, this.nbrDentPignon1, this.nbrDentPignon2});

  @override
  Widget build(BuildContext context) {
    var entreAxe = EntreAxeCalcul(
        nbrDentCourroie: nbrDentCouroi,
        engrenage1: nbrDentPignon1,
        engrenage2: nbrDentPignon2);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("result"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: SizedBox(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.rulerHorizontal),
                    Text("entre axe en In : "),
                    Text(entreAxe.distIn().toString())
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.rulerHorizontal),
                    Text("entre axe en mm : "),
                    Text(entreAxe.distMm().toString())
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.cog),
                    Text("diametre primitif en in du pignon entrainant : "),
                    Text(entreAxe.diametrePrimitf1().toString())
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.cog),
                    Text("diametre primitif en in du pignon entrainé : "),
                    Text(entreAxe.diametrePrimitf2().toString())
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.cogs),
                    Text("réduction : "),
                    Text(entreAxe.reduction().toString())
                  ],
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
