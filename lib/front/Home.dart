import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  var nbrDentPignon1 = "0";
  var nbrDentPignon2 = "0";
  var nbrDentCouroi = "0";
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculateur d'entre axe"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(hintText: "nbrDentPignon1"),
                        onSaved: (value) {
                          nbrDentPignon1 = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: "nbrDentPignon2"),
                        onSaved: (value) {
                          nbrDentPignon2 = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: "nbrDentCouroi"),
                        onSaved: (value) {
                          nbrDentCouroi = value;
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _formKey.currentState.save();
                          print("nbrDentPignon1 : " + nbrDentPignon1);
                          print("nbrDentPignon2 : " + nbrDentPignon2);
                          print("nbrDentCouroi : " + nbrDentCouroi);
                        },
                        child: Text("calculate"),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
