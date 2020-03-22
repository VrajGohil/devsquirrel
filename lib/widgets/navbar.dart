import 'package:devsquirrel/constants/colors.dart';
import 'package:devsquirrel/models/custom_theme.dart';
import 'package:devsquirrel/widgets/themeButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/responsiveLayout.dart';
import 'package:clay_containers/clay_containers.dart';

import 'menuButton.dart';

class NavBar extends StatefulWidget {
  NavBar({@required this.color, @required this.fontColor});
  final Color color;
  final Color fontColor;

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final navLinks = ["Home", "Work", "Info", "Contact"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: ClayContainer(
          color: widget.color,
          curveType: CurveType.convex,
          borderRadius: 36.0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            child: SelectableText(
              text,
              style: TextStyle(color: widget.fontColor),
              onTap: () {
                print(text);
              },
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              ThemeButton(
                color: kBlue,
                onTap: () => Provider.of<CustomTheme>(context).setBlue(),
              ),
              SizedBox(
                width: 8,
              ),
              ThemeButton(
                color: kLight,
                onTap: () => Provider.of<CustomTheme>(context).setLight(),
              ),
              SizedBox(
                width: 8,
              ),
              ThemeButton(
                color: kDark,
                // onTap: () => Provider.of<CustomTheme>(context).setDark(),
                onTap: (){
                  print('tap on dark');
                  Provider.of<CustomTheme>(context).setDark();
                  print(Provider.of<CustomTheme>(context).getBaseColor);
                },
              ),
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem()],
            )
          else
            MenuButton(
              color: widget.color,
              onTap: () {},
            ),
        ],
      ),
    );
  }
}
