import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:devsquirrel/constants/colors.dart';
import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';
import 'sendbtn.dart';

class Search extends StatelessWidget {
  Search({@required this.color,@required this.fontColor});
  final Color color;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.0,
        right: ResponsiveLayout.isSmallScreen(context) ? 4 : 74,
        top: 10,
        bottom: 40,
      ),
      child: ClayContainer(
        color: color,
        borderRadius: 36.0,
        emboss: true,
        height: 60,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: fontColor),
                        hintText: 'Your Email Address'),
                  )),
              Expanded(
                flex: 2,
                child: SendBtn(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
