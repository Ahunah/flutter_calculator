import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 188, 152, 203),
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";
  double num1 = 0;
  double num2 = 0;
  String operator = "";

  void buttonPressed(String value) {
    setState(() {
      if (value == "C") {
        output = "0";
        num1 = 0;
        num2 = 0;
        operator = "";
      } else if (value == "+" || value == "-" || value == "×" || value == "÷") {
        num1 = double.parse(output);
        operator = value;
        output = "0";
      } else if (value == "=") {
        num2 = double.parse(output);
        switch (operator) {
          case "+":
            output = (num1 + num2).toString();
            break;
          case "-":
            output = (num1 - num2).toString();
            break;
          case "×":
            output = (num1 * num2).toString();
            break;
          case "÷":
            output = num2 != 0 ? (num1 / num2).toString() : "Error";
            break;
        }
        // Cleanup: remove .0 from whole numbers
        if (output.endsWith(".0"))
          output = output.substring(0, output.length - 2);
      } else {
        output = output == "0" ? value : output + value;
      }
    });
  }

  // Improved button widget
  Widget buildButton(String text) {
    Color? buttonColor = const Color.fromARGB(
      255,
      226,
      194,
      221,
    ); // Default grey

    if (text == "C") buttonColor = const Color.fromARGB(255, 245, 70, 70);
    if (text == "=") buttonColor = const Color.fromARGB(255, 81, 197, 85);
    if ("+ - × ÷".contains(text)) {
      buttonColor = const Color.fromARGB(255, 110, 78, 186);
    }

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 4,
            ),
            onPressed: () => buttonPressed(text),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Display Screen
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Text(
                output,
                style: const TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 253, 253, 253),
                ),
              ),
            ),
          ),

          // Button Pad
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  children: [
                    buildButton("7"),
                    buildButton("8"),
                    buildButton("9"),
                    buildButton("÷"),
                  ],
                ),
                Row(
                  children: [
                    buildButton("4"),
                    buildButton("5"),
                    buildButton("6"),
                    buildButton("×"),
                  ],
                ),
                Row(
                  children: [
                    buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
                    buildButton("-"),
                  ],
                ),
                Row(
                  children: [
                    buildButton("C"),
                    buildButton("0"),
                    buildButton("="),
                    buildButton("+"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
