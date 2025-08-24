import 'package:blood/core/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        
        appBar: AppBar(
          title:"Request Blood".text.textStyle(TextStyle(fontSize: 26,fontFamily: 'libertin')).make() ,
          backgroundColor: MyTheme.primaryColor,
          shadowColor:Colors.black ,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              DropDownWidget()
            ],
          ),
        ),
      ),
    );
  }
}
class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String? selectedValue;

  final List<String> items = [
    "Apple",
    "Banana",
    "Orange",
    "Mango",
    "Grapes"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: 400,
        height: 250,
        child: DropdownButtonFormField<String>(
          value: selectedValue,
          
          decoration: InputDecoration(
            labelText: "Select Fruit", // 🔹 works like TextField label
            labelStyle: const TextStyle(
              fontSize: 16,
              color: Colors.red, // label color
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black, // 🔹 dropdown text style
            fontWeight: FontWeight.w500,
          ),
          isExpanded: false, // make it stretch full width
          icon: const Icon(Icons.arrow_drop_down, color: Colors.red),
          
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
              
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
        ),
      ),
    );
  }
}
