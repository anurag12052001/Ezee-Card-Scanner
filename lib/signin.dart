import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formkey1 = GlobalKey<FormState>();
  TextEditingController fullname_txt = TextEditingController();
  TextEditingController email_txt = TextEditingController();
  TextEditingController password_txt = TextEditingController();
  TextEditingController confirm_txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // full name
    final fullnamefield = TextFormField(
      controller: fullname_txt,
      autofocus: false,
      keyboardType: TextInputType.name,
      onSaved: (newValue) {
        fullname_txt.text = newValue!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: "Full Name",
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView()),
    );
  }
}
