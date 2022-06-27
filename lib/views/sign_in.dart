import 'package:flutter/material.dart';

//import '../widgets/widget.dart';
//import 'package:flutter_chat_app_v2/widgets/widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _nameState();
}

class _nameState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
    );
  }
  
}
