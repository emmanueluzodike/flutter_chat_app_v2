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
      //appBar: AppBar(title: Image.asset("assests/images/logo.png", height: 50)),
      //appBar: appBarMain(context),
      //appBar: AppBarMain.build(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: appBarMain(context),
      ),
    );
  }
}
