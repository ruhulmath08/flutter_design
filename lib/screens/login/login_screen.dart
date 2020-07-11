import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class LoginView extends StatefulWidget {
  final String argument;

  const LoginView({Key key, this.argument}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            right: 10.0,
            bottom: 10.0,
            left: 10.0,
          ),
          child: ListView(
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://i.imgur.com/XyT4vI9.png"),
                  backgroundColor: Colors.red,
                  minRadius: 90,
                  maxRadius: 100,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                obscureText: _obscureText,
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                          print(_obscureText);
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        semanticLabel:
                        _obscureText ? 'show password' : 'hide password',
                      ),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,
                  elevation: 10,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, HOME_VIEW_ROUTE, arguments: "Home");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
