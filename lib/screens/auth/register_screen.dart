import 'package:blood/core/themes/theme.dart';
import 'package:blood/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon(Icons.arrow_back,size: 30,color: MyTheme.primaryColor,).pOnly(top: 30,left: 20),
              25.heightBox,
              Center(child: Image.asset('assets/images/auth_images/register.png'),),
              15.heightBox,
           
           
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextFormField(
                   decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.black,
                      labelText: 'E-mail',
                      labelStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                      hintText: "Your E-mail",
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
                    prefixIcon: Icon(Icons.phone),
                    prefixIconColor: Colors.black,
                    labelText:"PhoneNumber" ,
                    labelStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                    hintText: "Your PhoneNumber",
                    hintStyle:TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyTheme.primaryColor))
                  ),
                ),
              ),
                13.heightBox,
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: TextFormField(
                   decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.black,
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.w500),
                      hintText: "Your Password",
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
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.black,
                      labelText: 'Confirm-Password',
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
                     5.heightBox,
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
                      child: "SignUp".text.color(Colors.white).textStyle(TextStyle(fontFamily: 
                      'libertin',fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1.38)).make(),
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
                      "SignUp Using Google".text.textStyle(TextStyle(fontSize: 16,fontFamily: 'libertin',fontWeight: FontWeight.bold)).make().pOnly(left: 5)
                    ],
                  ),
                ),
                 
              ),

            10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  "Already Have Account?".text.textStyle(TextStyle(fontSize: 16,fontFamily: 'libertin')).make(),
                  "Login".text.color(Colors.blue).textStyle(TextStyle(fontSize: 16,fontFamily: 'libertin')).make().px(5).onInkTap(
                () {
                Navigator.pushReplacementNamed(context, MyRoutes.loginScreenRoute);
                },
                  ),
                ],
              )

            ],
          )),
        ),
      ),
    );
  }
}