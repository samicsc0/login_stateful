import 'package:flutter/material.dart';
import 'package:login_stateful/src/mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String? email = "";
  String? password = "";
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(children: <Widget>[
          emailField(),
          passowrdField(),
          const Padding(padding: EdgeInsets.only(top: 40)),
          submitButton(),
        ]),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      validator: validateEmail,
      onSaved: (newValue) {
        email = newValue;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email Address",
        hintText: "alicebob@gmail.com",
      ),
    );
  }

  Widget passowrdField() {
    return TextFormField(
      validator: validatePassword,
      onSaved: (newValue) {
        password = newValue;
      },
      obscureText: true,
      decoration: const InputDecoration(
          labelText: "Password", hintText: "Password goes here..."),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.black),
      child: const Text("Login"),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          print("Email = $email & Password = $password");
        }
      },
    );
  }
}
