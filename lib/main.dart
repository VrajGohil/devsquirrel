import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_text.dart';
import 'package:devsquirrel/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants/strings.dart';
import 'models/custom_theme.dart';
import 'utils/platform_svg.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/search.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


void main() => runApp(ChangeNotifierProvider(
      create: (context) => CustomTheme(),
      child: MaterialApp(
        title: 'Flutter Landing Page',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'JetBrains',
        ),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
        home: HomePage(),
      ),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CustomTheme>(
      builder: (BuildContext context, CustomTheme theme, Widget child) {
        return Container(
          //color: theme.getBaseColor,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [theme.getBaseColor,theme.getBaseColorEnd],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  NavBar(
                    color: theme.getBaseColor,
                    fontColor: theme.getFontColor,
                  ),
                  Body(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CustomTheme>(
      builder: (BuildContext context, CustomTheme theme, Widget child) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: 400,
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
                            color: theme.getBaseColor,
                            depth: 80,
                            emboss: true,
                            size: 75.0,
                            style: TextStyle(fontFamily: 'Title'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 20),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                              style: TextStyle(color: theme.getFontColor),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Search(
                            color: theme.getBaseColor,
                            fontColor: theme.getFontColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      child: PlatformSvg.asset(theme.getServiceTitle,width: MediaQuery.of(context).size.width * 0.25),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 300.0,left: 30.0),
                        child: PlatformSvg.asset(kIllustrationUi,width: MediaQuery.of(context).size.width * 0.45),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 850.0,right: 30.0),
                        child: PlatformSvg.asset(kIllustrationApp,width: MediaQuery.of(context).size.width * 0.45),
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.topCenter,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                   child: PlatformSvg.asset(theme.getBubble,width: MediaQuery.of(context).size.width * 1.5),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class Laptop extends StatelessWidget {
  const Laptop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomTheme>(
      builder: (BuildContext context, CustomTheme theme, Widget child) {
        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
              theme.getLaptopURL,
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
                  textStyle:
                      TextStyle(fontSize: 30.0, color: theme.getFontColor),
                  textAlign: TextAlign.start,
                  alignment:
                      AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
            ),
          ],
        );
      },
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CustomTheme>(
      builder: (BuildContext context, CustomTheme theme, Widget child) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 40.0,right: 40.0, top:40.0 , bottom: MediaQuery.of(context).viewInsets.bottom + 40.0),
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
                    color: theme.getBaseColor,
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
                      style: TextStyle(color: theme.getFontColor),
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
                  color: theme.getBaseColor,
                  fontColor: theme.getFontColor,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
