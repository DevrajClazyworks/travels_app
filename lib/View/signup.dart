import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelsapp/Utils/responsive.dart';
import 'package:travelsapp/View/loginscreen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return PopScope(
      canPop: false,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Container(
                height: Height - 550,
                width: Width,
                child: Image.asset("assets/images/Signupimg.png"),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Create an account",
                  style: TextStyle(
                      fontSize: 22.0.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Bentham'),
                ),
              ),
              SizedBox(
                height: 1.0.hp,
              ),
              texfieldedit(context, "name",
                  Image.asset("assets/images/phone_number.png")),
              SizedBox(
                height: 1.0.hp,
              ),
              texfieldedit(context, "mobile Number",
                  Image.asset("assets/images/phone_number.png")),
              SizedBox(
                height: 1.0.hp,
              ),
              texfieldedit(context, "Standard",
                  Image.asset("assets/images/phone_number.png")),
              SizedBox(
                height: 1.0.hp,
              ),
              texfieldedit(context, "Section",
                  Image.asset("assets/images/phone_number.png")),
              SizedBox(
                height: 1.0.hp,
              ),
              texfieldedit(
                  context, "Address", AssetImage("assets/images/language.png")),
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
                    MaterialPageRoute(builder: (context) => Loginscreen()),
                  );
                },
                child: Text(
                  "Sign Up",
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
            ],
          )),
    );
  }
}

texfieldedit(BuildContext context, text, image) {
  double Width = MediaQuery.of(context).size.width;
  double Height = MediaQuery.of(context).size.height;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: Width * 0.13,
        height: Height * 0.08,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          color: Color(0xFFF4F0D5),
        ),
        child: Center(
          child: SizedBox(
            height: 3.5.hp,
            child: Image.asset(
              image.toString(),
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
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffE7EBEE),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white60, width: 0),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white60, width: 0),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white60, width: 0),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white60, width: 0),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              errorStyle:
                  TextStyle(color: Colors.deepOrangeAccent, fontSize: 12),
              hintText: text,
            ),
          )),
    ],
  );
}
