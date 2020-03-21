import 'package:clay_containers/widgets/clay_text.dart';
import 'package:devsquirrel/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/search.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter Landing Page',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'JetBrains',
      ),
      home: HomePage(),
    ));

//default theme blue
Color baseColor = kBlue;
Color fontColor = kLight;
String laptopURL = 'assets/laptop.png';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: baseColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(
                color: baseColor,
                fontColor: fontColor,
              ),
              Body()
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatefulWidget {
  @override
  _LargeChildState createState() => _LargeChildState();
}

class _LargeChildState extends State<LargeChild> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .4,
            child: Laptop(),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClayText(
                    ' Dev Squirrel ',
                    color: baseColor,
                    depth: 80,
                    emboss: true,
                    size: 75.0,
                    style: TextStyle(fontFamily: 'Title'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                      style: TextStyle(color: fontColor),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Search(
                    color: baseColor,
                    fontColor: fontColor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Laptop extends StatelessWidget {
  const Laptop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          laptopURL,
        ),
        FractionallySizedBox(
          widthFactor: 0.4,
          child: TypewriterAnimatedTextKit(
            isRepeatingAnimation: true,
            speed: Duration(milliseconds: 130),
              onTap: () {
                print("Tap Event");
              },
              text: [
                "Android Development",
                "iOS Development",
                "Web Development",
                "Cloud Services",
              ],
              textStyle: TextStyle(fontSize: 30.0,color: fontColor),
              textAlign: TextAlign.start,
              alignment:
                  AlignmentDirectional.topStart // or Alignment.topLeft
              ),
        ),
      ],
    );
  }
}

class SmallChild extends StatefulWidget {
  @override
  _SmallChildState createState() => _SmallChildState();
}

class _SmallChildState extends State<SmallChild> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: FractionallySizedBox(
                alignment: Alignment.center,
                widthFactor: 1,
                  child: Laptop(),
              ),
            ),
            Center(
              child: ClayText(
                '  Dev Squirrel ',
                color: baseColor,
                depth: 80,
                emboss: true,
                size: 60.0,
                style: TextStyle(fontFamily: 'Title'),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 20),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                  style: TextStyle(color: fontColor),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 32,
            ),
            Search(
              color: baseColor,
              fontColor: fontColor,
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
