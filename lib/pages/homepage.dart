import 'package:flutter/material.dart';
import 'package:thread_clone/util/constant.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcmainBlack,
      appBar: AppBar(
        backgroundColor: kcTextwhite,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Center(
              child: Text(
                "this is homepage",
                style: TextStyle(color: kcTextwhite, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
