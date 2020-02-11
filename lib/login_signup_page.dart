import 'package:flutter/material.dart';
import 'data.dart';
import 'bottomNavigationBar.dart';
import 'main.dart';


class LoginSignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage>{

  @override

//final formKey = new GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'OwnPhoto',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
        ),
        body: Stack(
          children: <Widget>[
            showForm(context),
            //showCircularProgress(),
          ],
        ));
  }
}


Widget showForm(BuildContext context) {

  return new Container(
      padding: EdgeInsets.all(16.0),
      child: new Form(
        child: new ListView(
          shrinkWrap: true,
          children: <Widget>[
            showLogo(),
            showEmailInput(),
            showPasswordInput(),
            showPrimaryButton(context),
          ],
        ),
      ));
}

Widget showLogo() {
  return new Hero(
    tag: 'hero',
    child: Padding(
      padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 150.0,
        child: Image.asset('design/icon.png'),
      ),
    ),
  );
}

Widget showEmailInput() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
    child: new TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Email',
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          )),
      validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
      //onSaved: (value) => _email = value.trim(),
    ),
  );
}

Widget showPasswordInput() {

  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
    child: new TextFormField(
      maxLines: 1,
      obscureText: true,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Password',
          icon: new Icon(
            Icons.lock,
            color: Colors.grey,
          )),
      validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
      onSaved: (value) => data.password = value.trim(),
    ),
  );
}


Widget showPrimaryButton(BuildContext context) {
  return new Padding(
      padding: EdgeInsets.fromLTRB(40.0, 45.0, 40.0, 0.0),
      child: SizedBox(
        height: 50.0,
        child: new RaisedButton(
            elevation: 5.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Color.fromARGB(255, 185, 219, 142),
            child: new Text(
              //_isLoginForm ? 'Login' :
                'Sign in',
                style: new TextStyle(fontSize: 20.0, color: Colors.white)
            ),
            onPressed: () {
              print('debug');
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>BottomNavigation()));
            }
        ),
      ));
}
