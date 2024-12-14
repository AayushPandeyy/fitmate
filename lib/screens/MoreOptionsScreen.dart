import 'package:flutter/material.dart';

class Moreoptionsscreen extends StatefulWidget {
  const Moreoptionsscreen({super.key});

  @override
  State<Moreoptionsscreen> createState() => _MoreoptionsscreenState();
}

class _MoreoptionsscreenState extends State<Moreoptionsscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(child: Text("MoreOptionsScreen"),),
    ));
  }
}