import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:travelsapp/Utils/responsive.dart';
import 'package:travelsapp/View/signup.dart';
import 'package:travelsapp/View/tracking.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool passwordVisible = false;
  // late double width;
  // late double height;
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return PopScope(
      canPop: false,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Height - 450,
              width: Width,
              child: Image.asset("assets/images/logingif.gif"),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 30.0.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Bentham'),
              ),
            ),
            SizedBox(
              height: 1.0.hp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: Width * 0.13,
                  height: Height * 0.08,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xFFF4F0D5),
                  ),
                  child: Center(
                    child: SizedBox(
                      height: 3.5.hp,
                      child: Image.asset(
                        'assets/images/phone_number.png',
                        // height: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width: Width / 1.4,
                    height: Height * 0.07,
                    child: TextFormField(
                      cursorColor: const Color(0xff4E727E),
                      //controller: mobileNumber,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(
                            10), //n is maximum number of characters you want in textfield
                      ],
                      style: TextStyle(
                          fontSize: 12.0.sp,
                          color: Colors.black,
                          fontFamily: 'Brawler',
                          fontWeight: FontWeight.normal),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xffE7EBEE),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        errorStyle: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 12),
                        hintText: "Mobile Number",
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 1.0.hp,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: Width * 0.13,
                  height: Height * 0.08,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color(0xFFF4F0D5),
                  ),
                  child: Center(
                    child: SizedBox(
                      height: 3.5.hp,
                      child: Image.asset(
                        'assets/images/password.png',
                        // height: 23,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width: Width / 1.4,
                    height: Height * 0.07,
                    child: TextFormField(
                      cursorColor: const Color(0xff4E727E),
                      //controller: mobileNumber,
                      keyboardType: TextInputType.text,
                      obscureText: !passwordVisible,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                      ],
                      style: TextStyle(
                          fontSize: 12.0.sp,
                          color: Colors.black,
                          fontFamily: 'Brawler',
                          fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffE7EBEE),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            icon: passwordVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        errorBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        focusedErrorBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white60, width: 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        errorStyle: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 12),
                        hintText: "Password",
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 1.0.hp,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width: Width * 0.13,
            //       height: Height * 0.08,
            //       decoration: BoxDecoration(
            //         borderRadius: const BorderRadius.only(
            //             topLeft: Radius.circular(10),
            //             bottomLeft: Radius.circular(10)),
            //         color: Color(0xFFF4F0D5),
            //       ),
            //       child: Center(
            //         child: SizedBox(
            //           height: 3.5.hp,
            //           child: Image.asset(
            //             'assets/images/language.png',
            //             // height: 23,
            //             color: Colors.black,
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //         width: Width / 1.4,
            //         height: Height * 0.07,
            //         child: TextFormField(
            //           cursorColor: const Color(0xff4E727E),
            //           //controller: mobileNumber,
            //           keyboardType: TextInputType.number,
            //           textInputAction: TextInputAction.next,
            //           inputFormatters: [
            //             FilteringTextInputFormatter.digitsOnly,
            //             LengthLimitingTextInputFormatter(
            //                 10), //n is maximum number of characters you want in textfield
            //           ],
            //           style: TextStyle(
            //               fontSize: 12.0.sp,
            //               color: Colors.black,
            //               fontFamily: 'Brawler',
            //               fontWeight: FontWeight.normal),
            //           decoration: InputDecoration(
            //             filled: true,
            //             fillColor: Color(0xffE7EBEE),
            //             focusedBorder: OutlineInputBorder(
            //                 borderSide:
            //                     BorderSide(color: Colors.white60, width: 0),
            //                 borderRadius: BorderRadius.only(
            //                     topRight: Radius.circular(10),
            //                     bottomRight: Radius.circular(10))),
            //             enabledBorder: OutlineInputBorder(
            //                 borderSide:
            //                     BorderSide(color: Colors.white60, width: 0),
            //                 borderRadius: BorderRadius.only(
            //                     topRight: Radius.circular(10),
            //                     bottomRight: Radius.circular(10))),
            //             errorBorder: OutlineInputBorder(
            //                 borderSide:
            //                     BorderSide(color: Colors.white60, width: 0),
            //                 borderRadius: BorderRadius.only(
            //                     topRight: Radius.circular(10),
            //                     bottomRight: Radius.circular(10))),
            //             focusedErrorBorder: OutlineInputBorder(
            //                 borderSide:
            //                     BorderSide(color: Colors.white60, width: 0),
            //                 borderRadius: BorderRadius.only(
            //                     topRight: Radius.circular(10),
            //                     bottomRight: Radius.circular(10))),
            //             errorStyle: TextStyle(
            //                 color: Colors.deepOrangeAccent, fontSize: 12),
            //             hintText: "Translate",
            //             // contentPadding:
            //             //     EdgeInsets.only(top: 0.0.sp, left: 12.0.sp)
            //             // suffixIcon:  Padding(
            //             //   padding: const EdgeInsets.all(12.0),
            //             //   child: Image.asset('assets/images/password.png',height: 23,color: Colors.white,),
            //             // ),
            //             // label: const Text('Password',style: TextStyle(color: Colors.white60),)
            //           ),
            //         )),
            //   ],
            // ),
            SizedBox(
              height: 2.0.hp,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TrackingPage()),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'Bentham',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15.0.sp),
              ),
            ),

            SizedBox(
              height: 4.0.hp,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don`t have an account?',
                    style: TextStyle(
                        fontSize: 2.0.hp, color: const Color(0xff4E727E))),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 2.0.hp,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

Future<bool> onBackPressed(context) {
  bool? value;
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      contentPadding: const EdgeInsets.only(top: 5.0, left: 20.0, bottom: 0.0),
      title: const Text(
        'Confirm Exit',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontFamily: 'Mada',
            fontWeight: FontWeight.w700,
            color: Color(0xFF0284A2)),
      ),
      content: const Text(
        'Are you sure that you want to exit',
        style: TextStyle(fontFamily: 'Mada', color: Color(0xFF3F4654)),
      ),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "cancel",
              style: const TextStyle(
                  color: Color(0xFF0284A2), fontWeight: FontWeight.w600),
            )),
        TextButton(
            onPressed: () {
              SystemNavigator.pop();
              Navigator.pop(context);
            },
            child: Text(
              "yes",
              style: const TextStyle(
                  color: Color(0xFF0284A2), fontWeight: FontWeight.w600),
            )),
      ],
    ),
  );
  return new Future.value(value);
}
