//packages
import 'package:flutter/material.dart';
import '../widgets/custom_input_fields.dart';
import '../widgets/rounded_button.dart';

class LoginPage extends StatefulWidget {
  //data inside is not mutable
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  late double _DeviceHeight;
  late double _DeviceWidth;

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _DeviceHeight = MediaQuery.of(context).size.height;
    _DeviceWidth = MediaQuery.of(context).size.width;
    return BuildUI();
  }

  Widget BuildUI() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: _DeviceWidth * 0.03, vertical: _DeviceHeight * 0.02),
        //width and height of the container
        height: _DeviceHeight * 0.98,
        width: _DeviceWidth * 0.97,
        //child attributes for the container
        //column widget is something which allows to put different elements inside,allows multiple child in it
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _pageTitle(),
            //adding spacing between elements
            SizedBox(
              height: _DeviceHeight * 0.04,
            ),
            _loginForm(),
            SizedBox(
              height: _DeviceHeight * 0.05,
            ),
            _loginButton(),
            SizedBox(
              height: _DeviceHeight * 0.02,
            ),
            _registerAccountLink(),
          ],
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return Container(
      height: _DeviceHeight * 0.10,
      child: Text(
        "Chatify",
        style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _loginForm() {
    return Container(
        height: _DeviceHeight * 0.18,
        child: Form(
          key: _loginFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextFormField(
                  onSaved: (_value) {},
                  regEx:
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                  hintText: 'Email',
                  obscureText: false),
              CustomTextFormField(
                  onSaved: (_value) {},
                  regEx: r".{8,}",
                  hintText: 'Password',
                  obscureText: true)
            ],
          ),
        ));
  }

  Widget _loginButton() {
    return RoundButton(
      name: 'Login',
      height: _DeviceHeight * 0.065,
      width: _DeviceWidth * 0.65,
      onPressed: () {},
    );
  }

  Widget _registerAccountLink() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        // ignore: prefer_const_constructors
        child: Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }
}
