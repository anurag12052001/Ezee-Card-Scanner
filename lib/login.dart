import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailtxt = TextEditingController();
  TextEditingController passwordtxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // email field
    final emailfield = TextFormField(
      controller: emailtxt,
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailtxt.text =
            value!; // this will save our email in value variable, ! for null safty
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          color: Colors.black,
        ),
        hintText: "Email",
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

    // password field
    final passwordfield = TextFormField(
      controller: passwordtxt,
      autofocus: false,
      obscureText: true,
      onSaved: (value1) {
        passwordtxt.text = value1!; // password will be saved in value1
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.vpn_key,
          color: Colors.black,
        ),
        hintText: "Password",
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

    // login button
    final loginbutton = Material(
      elevation: 30,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        minWidth: MediaQuery.of(context).size.width,
      ),
    );

    // // facebook button

    // final facebookbutton = Material(
    //   elevation: 20,
    //   borderRadius: BorderRadius.circular(20),
    //   color: Colors.black,
    //   child: MaterialButton(
    //       onPressed: () {},
    //       child: Text("Facebook",
    //           style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 20,
    //               fontWeight: FontWeight.bold)),
    //       minWidth: MediaQuery.of(context).size.width / 4),
    // );

    // gmail button

    // final gmailbutton = Material(
    //   // elevation: 20,
    //   borderRadius: BorderRadius.circular(20),
    //   color: Colors.transparent,
    //   child: MaterialButton(
    //     onPressed: () {},
    //     child: Image.asset(
    //       "assets/facebook.png",
    //       width: 50,
    //       height: 50,
    //     ),
    //     minWidth: MediaQuery.of(context).size.width / 3,
    //   ),
    // );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                "assets/login_lottie.gif",
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
                height: 300,
              ),
              // SizedBox(
              //   height: 35,
              // ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 35, right: 35, bottom: 20),
                child: emailfield,
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 35, right: 35, bottom: 20),
                child: passwordfield,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 35, right: 35, bottom: 20),
                child: loginbutton,
              ),
              Center(
                child: Text(
                  "OR CONNECT WITH",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/google.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Image.asset(
                    "assets/facebook.png",
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "SignIn with us",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "Terms and Conditions",
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
