import 'package:blood/core/themes/theme.dart';
import 'package:blood/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),                  child: Icon(Icons.arrow_back,size: 30,).onInkTap(() {
                        Navigator.pushReplacementNamed(context, MyRoutes.forgotPasswordSreenRoute);
                      },),
                ),
              Center(child: LottieBuilder.asset("assets/lottie/success.json",repeat: false,height: 300,))
            ,
            10.heightBox,
            "Verify OTP".text.textStyle(TextStyle(fontFamily: 'libertin',fontSize: 26,color: MyTheme.primaryColor)).make().centered(),
            8.heightBox,
            "Enter the OTP Code sent to your Phone Number".text.textStyle(context.captionStyle).
            textStyle(TextStyle(fontSize: 16,fontFamily: 'libertin')).make().centered(),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
              child: PinCodeTextField(appContext: context, length: 4,
              pinTheme: PinTheme(
                activeFillColor: Colors.white,
    selectedFillColor: Colors.grey.shade200,
    inactiveFillColor: Colors.grey.shade100,
    activeColor: Colors.blue,
    selectedColor: Colors.red,
    inactiveColor: Colors.grey,
                
              ),
              keyboardType: TextInputType.number,
              animationType: AnimationType.scale,
              ),
            ),
            "Didn't recieve OTP Code?".text.textStyle(context.captionStyle).lg.make().centered(),
            2.heightBox,
            "Resend Code".text.textStyle(TextStyle(fontSize: 18,fontFamily: 'libertin',decoration: TextDecoration.underline,fontWeight: FontWeight.bold)).make().centered(),
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
                        
                        Navigator.pushReplacementNamed(context, MyRoutes.resetPasswordRoute);
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