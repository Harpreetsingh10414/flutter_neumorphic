import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp( Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return //
        Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                depth: 8,
                surfaceIntensity: 1,
                shape: NeumorphicShape.concave,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Icon(
                Icons.stop,
                size: 132,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NeumorphicButton(
              onPressed: () {},
              child: Text(
                "Hello",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NeumorphicSlider(
              min: 0,
              max: 100,
              value: 25,
              style: SliderStyle(variant: Colors.red, accent: Colors.red[500]),
            ),
            SizedBox(
              height: 20,
            ),
            NeumorphicSwitch(),
            SizedBox(
              height: 20,
            ),
            NeumorphicProgressIndeterminate(),
            SizedBox(
              height: 20,
            ),
            NeumorphicCheckbox(
              value: true,
              onChanged: (value) {},
            ),
            SizedBox(
              height: 20,
            ),
            NeumorphicRadio(
              child: Padding(
                padding: EdgeInsets.all(
                  18,
                ),
                child: Text("Hello"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NeumorphicText(
              "Hello there",
              textStyle: NeumorphicTextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
    //);
  }
}
