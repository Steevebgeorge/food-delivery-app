import 'package:flutter/material.dart';
import 'package:food_delivery_ui/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1 / 3,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      MdiIcons.food,
                      color: kbackgroundColor,
                      size: 45,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLogin = true;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 65,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: isLogin
                                    ? kbackgroundColor
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: GoogleFonts.abhayaLibre(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLogin = false;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 65,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: !isLogin
                                    ? kbackgroundColor
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                          ),
                          child: Text(
                            "Sign-Up",
                            style: GoogleFonts.abhayaLibre(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 2 / 3,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Email Address",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      isLogin
                          ? Text(
                              "Forgot Password?",
                              style: GoogleFonts.abhayaLibre(
                                  fontSize: 20,
                                  color: kbackgroundColor,
                                  fontWeight: FontWeight.bold),
                            )
                          : SizedBox.shrink(),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: kbackgroundColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          isLogin ? "Login" : "Register",
                          style: GoogleFonts.abhayaLibre(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
