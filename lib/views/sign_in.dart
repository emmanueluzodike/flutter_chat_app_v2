import 'package:flutter/material.dart';
import 'package:flutter_chat_app_v2/widgets/widget.dart';

class SignIn extends StatefulWidget {
  //const SignIn(void Function() toggleView, {Key? key}) : super(key: key);

  final Function toggle;
  SignIn(this.toggle);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("email"),
                ),
                TextField(
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
                    "Sign In",
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
                    "Sign In with Google",
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
                      "Don't have an account? ",
                      style: simpleTextStyle2(),
                    ),
                    GestureDetector(
                      onTap: (){
                        widget.toggle();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: const Text(
                          "Register now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                          ),
                        ),
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
