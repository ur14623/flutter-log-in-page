import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My satefull app ExampleS",
    home: Mystatefullwidget(),
  ));
}

class Mystatefullwidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myname();
  }
}

class myname extends State<Mystatefullwidget> {
  bool name = true;
  String value = "";
  final _formKey = GlobalKey<FormState>();
  TextEditingController enterdata = TextEditingController();
  TextEditingController enterdatapas = TextEditingController();
  String errormessage = '';
  String errormessagepass = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('LOGIN'),
            SizedBox(
              height: 100.0,
            ),
            SizedBox(
              width: 300.0,
              height: 80.0,
              child: TextField(
                controller: enterdata,
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  errorText: errormessage,
                  prefixIcon: Icon(
                    Icons.account_box_sharp,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                keyboardType: TextInputType.text,
                //maxLength: 10,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 300.0,
              height: 80.0,
              child: TextField(
                controller: enterdatapas,
                decoration: InputDecoration(
                  hintText: 'Password',
                  errorText: errormessagepass,
                  counterText: '',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: IconButton(
                    icon: Icon(
                        name ? Icons.security : Icons.remove_red_eye_sharp),
                    onPressed: () {
                      setState(() {
                        name = !name;
                      });
                    },
                  ),
                ),
                keyboardType: TextInputType.text,
                maxLength: 10,
                obscureText: name,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 300.0,
              height: 55.0,
              child: RaisedButton(
                // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed: () {
                  setState(() {
                    if (enterdata.text.isEmpty) {
                      errormessage = 'pleas enter User Name';
                    } else {
                      if (enterdata.text.length < 3) {
                        errormessage = 'pleas enter at lest 3 char';
                      } else {
                        errormessage = '';
                        if (enterdatapas.text.isEmpty) {
                          errormessagepass = 'pleas enter Password';
                        } else {
                          if (enterdatapas.text.length < 3) {
                            errormessagepass = 'pleas enter at lest 3 char';
                          } else {
                            errormessagepass = '';
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => hompage()));
                            //
                            // }
                          }
                        }
                      }
                    }
                  });
                },
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Forgot Password?"),
            SizedBox(
              height: 100.0,
            ),
            Text("Don't have an account?"),
            SizedBox(
              height: 10.0,
            ),
            Text("Register"),
          ],
        ),
      ),
    );
  }
}
