import 'package:flutter/material.dart';
import 'package:thread_clone/pages/Register_page.dart';
import 'package:thread_clone/pages/homepage.dart';

class Wrapper extends StatefulWidget {
  final bool isAuthenticate;
  const Wrapper({super.key, required this.isAuthenticate});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    if (widget.isAuthenticate) {
      return const Homepage();
    } else {
      return const Register();
    }
  }
}
