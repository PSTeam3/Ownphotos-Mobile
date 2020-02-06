import 'package:flutter/material.dart';
import 'login_signup_page.dart';

class Practice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _PracticeState();
}

class _PracticeState extends State<Practice>{

  @override
    Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset(
                 'assets/OwnPhotoBW.png',
                  fit: BoxFit.contain,
                  height: 50,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), 
                  child: 
                    Text(
                      "Photo",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      textDirection: TextDirection.ltr
                    ),
              )
            ],
          ),
        ),
       body: Stack(
          children: <Widget>[
            showForm2(),
            //showCircularProgress(),
          ],
        ),
       );
  }
}

Widget showForm2() {

    return new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
          //key: _formKey,
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              showDate(),
              //showEmailInput(),
              //showPasswordInput(),
              //showPrimaryButton(),
              //showSecondaryButton(),
              //showErrorMessage(),
            ],
          ),
        ));
  }

  Widget showDate() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
      child: new Text(
        'Yesterday 22:17 ',
         style: TextStyle(color: Colors.orange[300], fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
    );
  }
