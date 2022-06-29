import 'package:flutter/material.dart';
import 'package:flutter_chat_app_v2/widgets/widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
