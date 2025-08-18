import 'package:blood/core/themes/theme.dart';
import 'package:blood/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),                  
                        child: Icon(Icons.arrow_back,size: 30,).onInkTap(() {
                        Navigator.pushReplacementNamed(context, MyRoutes.otpScreenRoute);
                      },),
                ),
                10.heightBox,
              "Reset Password".text.textStyle(TextStyle(fontSize: 28,fontFamily: 'libertin')).make().pOnly(left: 16),
              8.heightBox,
              "The password should be different from the previous password".text.align(TextAlign.justify).
              textStyle(TextStyle(fontSize: 16,fontWeight: FontWeight.w400,)).
              make().pOnly(left: 16,right: 10),
              26.heightBox,
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextFormField(
                   decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.black,
                      labelText: 'New Password',
                      labelStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                      hintText: "New Password",
                      hintStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),  
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyTheme.primaryColor  ))

                    ),
                ),
              ),
               13.heightBox,
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextFormField(
                   decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.black,
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),  
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyTheme.primaryColor  ))

                    ),
                ),
              ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Material(
                    color: MyTheme.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, MyRoutes.otpScreenRoute);
                      },
                      child: AnimatedContainer(duration: Duration(),
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: "Continue".text.color(Colors.white).textStyle(TextStyle(fontFamily: 
                      'libertin',fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1.38)).make().onInkTap(() {
                        Navigator.pushReplacementNamed(context, MyRoutes.loginScreenRoute);
                      },),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}