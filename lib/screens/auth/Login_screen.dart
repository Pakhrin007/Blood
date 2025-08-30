import 'package:blood/core/themes/theme.dart';
import 'package:blood/routes/routes.dart';
import 'package:blood/widgets/checkbox.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/images/auth_images/auth.jpg',height: 250,),),
              10.heightBox,
              Center(child: "Welcome Back !!".text.color(MyTheme.primaryColor).textStyle(TextStyle(fontFamily: 
              'libertin',fontSize: 24)).make()),

              20.heightBox,
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextFormField(
                   decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.black,
                      labelText: 'Enter your Email',
                      labelStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                      hintText: "E-mail",
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
                    labelText: "Enter your Password",
                    labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'libertin'),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),

                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyTheme.primaryColor))

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child:CheckBoxWidget() 
              ),
              5.heightBox,
              // -----------------------login Butto------------------------
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Material(
                    color: MyTheme.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: InkWell(
                      child: AnimatedContainer(duration: Duration(),
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: "Login".text.color(Colors.white).textStyle(TextStyle(fontFamily: 
                      'libertin',fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1.38)).make().onInkTap(() {
                        
                        Navigator.pushReplacementNamed(context, 'BottomNavBar');
                      },),
                      ),
                    ),
                  ),
                ),
              ),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Row(
                  children: [
                      Expanded(child: Divider(color: Colors.black,)),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: "Or".text.textStyle(TextStyle(fontFamily: 'libertin',fontSize: 16,fontWeight: FontWeight.w600)).make(),
                      ),
                      Expanded(child: Divider(color: Colors.black,),),
                  ],
                ),
              ),
              20.heightBox,

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black,width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white24,
                        blurRadius: 1,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/auth_images/google_logo.png',height: 30,),
                      "Login Using Google".text.textStyle(TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.bold)).make().pOnly(left: 5)
                    ],
                  ),
                ),
                 
              ),

            10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  "Don't Have Account?".text.textStyle(TextStyle(fontSize: 16,fontFamily: 'libertin')).make(),
                  "SignUp".text.color(Colors.blue).textStyle(TextStyle(fontSize: 16,fontFamily: 'libertin')).make().px(5).onInkTap(
                () {
                Navigator.pushReplacementNamed(context, MyRoutes.registerScreenRoute);
                },
                  ),
                ],
              )

            ],
          ),
          ),
        ),
      ),
    );
    
  }
}