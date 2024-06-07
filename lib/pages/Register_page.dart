import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thread_clone/pages/homepage.dart';
import 'package:thread_clone/services/formvalidation.dart';
import 'package:thread_clone/util/constant.dart';
import 'package:thread_clone/widgets/sharedbutton.dart';
import 'package:thread_clone/widgets/textfield.dart';
import 'package:thread_clone/widgets/textproperty.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //key for check the textfield validation
  final _validationKey = GlobalKey<FormState>();
  //controllers for the controle the textFileds
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conformPasswordController =
      TextEditingController();
  final TextEditingController _userControler = TextEditingController();
  //check the validation
  FormValidation validateChecker = FormValidation();
  //create object for textstylings
  Textprop textStyle = Textprop();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcmainBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            child: Image.asset(
                              "assets/images/6e29d16664e6b2b2b483095f333d4bba.png",
                              scale: 6,
                            ),
                          ),
                          Positioned(
                            left: 90,
                            child: ShaderMask(
                              shaderCallback: (bounds) {
                                return textStyle.textgradient.createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                );
                              },
                              child: Text(
                                "Threads",
                                style: textStyle.textstyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                //user details form
                SizedBox(
                  height: kctextgap,
                ),
                Form(
                  key: _validationKey,
                  child: Column(
                    children: [
                      //username field
                      UserTextField(
                          controller: _userControler,
                          inputType: TextInputType.text,
                          inputAction: TextInputAction.next,
                          showtext: false,
                          hintText: "Username",
                          validator: validateChecker.validateUserName),
                      SizedBox(
                        height: kctextgap,
                      ),
                      //email feild
                      UserTextField(
                          controller: _emailController,
                          inputAction: TextInputAction.next,
                          inputType: TextInputType.emailAddress,
                          showtext: false,
                          hintText: "Email",
                          validator: validateChecker.validateEmail),
                      SizedBox(
                        height: kctextgap,
                      ),
                      //password feild
                      UserTextField(
                          controller: _passwordController,
                          inputAction: TextInputAction.next,
                          showtext: false,
                          hintText: "Password",
                          validator: validateChecker.validatePassword),
                      SizedBox(
                        height: kctextgap,
                      ),
                      //confirmpassword feild
                      UserTextField(
                          controller: _conformPasswordController,
                          inputAction: TextInputAction.done,
                          showtext: false,
                          hintText: "Confirm Password",
                          validator: validateChecker.validatePassword),
                      SizedBox(
                        height: kctextgap,
                      ),
                      //already sing text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: GoogleFonts.poppins(
                                color: kcTextYellow,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          //navigate to sing in page
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Sing In",
                              style: GoogleFonts.poppins(
                                  color: kcTextwhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ),
                            );
                          },
                          child: const Sharedbutton(lable: "Register")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
