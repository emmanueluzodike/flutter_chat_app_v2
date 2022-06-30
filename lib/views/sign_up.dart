import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController userNameTextEdittingController = new TextEditingController();
  TextEditingController emailTextEdittingController = new TextEditingController();
  TextEditingController passwordTextEdittingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: appBarMain(context),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: userNameTextEdittingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("username"),
                ),
                TextField(
                  controller: emailTextEdittingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("email"),
                ),
                TextField(
                  controller: passwordTextEdittingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("password"),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Text(
                      "Forgot Password",
                      style: simpleTextStyle(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff007ef4),
                        Color(0xff2A75BC),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "Sign Up with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: simpleTextStyle2(),
                    ),
                    const Text(
                      "SignIn now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
