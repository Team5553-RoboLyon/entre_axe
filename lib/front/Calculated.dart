import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../back/calculator.dart';

class Calculated extends StatelessWidget {
  @override

  var nbrDentPignon1 = "0";
  var nbrDentPignon2 = "0";
  var nbrDentCouroi = "0";

  Calculated({this.nbrDentCouroi, this.nbrDentPignon1, this.nbrDentPignon2});

  Widget build(BuildContext context) {
    var entreAxeIn = distIn(
        int.parse(nbrDentCouroi),
        int.parse(nbrDentPignon1),
        int.parse(nbrDentPignon2));
    var entreAxeMm = distMm(entreAxeIn);
    var reductionVar = reduction(
        int.parse(nbrDentPignon1),
        int.parse(nbrDentPignon2));
    var diametrePrimitif1 = diametrePrimitf(
        int.parse(nbrDentCouroi),
        int.parse(nbrDentPignon1));
    var diametrePrimitif2 = diametrePrimitf(
        int.parse(nbrDentCouroi),
        int.parse(nbrDentPignon2));
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
                    Text(entreAxeIn.toString())
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.rulerHorizontal),
                    Text("entre axe en mm : "),
                    Text(entreAxeMm.toString())
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.cog),
                    Text("diametre primitif en in du pignon entrainant : "),
                    Text(diametrePrimitif1.toString())
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.cog),
                    Text("diametre primitif en in du pignon entrainé : "),
                    Text(diametrePrimitif2.toString())
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.cogs),
                    Text("réduction : "),
                    Text(reductionVar.toString())
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