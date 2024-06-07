import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thread_clone/util/constant.dart';

class Sharedbutton extends StatefulWidget {
  final String lable;
  const Sharedbutton({super.key, required this.lable});

  @override
  State<Sharedbutton> createState() => _SharedbuttonState();
}

class _SharedbuttonState extends State<Sharedbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRad), color: kcButtonwhite),
      child: Center(
        child: Text(
          widget.lable,
          style: GoogleFonts.poppins(
              color: kcmainBlack, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
