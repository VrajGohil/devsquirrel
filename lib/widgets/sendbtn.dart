import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:devsquirrel/constants/colors.dart';
import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class SendBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      color: kOrange,
      height: 40,
      spread: 4,
      borderRadius: 36.0,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Icon(
              Icons.send,
              color: Colors.white,
              size: ResponsiveLayout.isSmallScreen(context)
                  ? 22
                  : ResponsiveLayout.isMediumScreen(context) ? 22 : 40,
            ),
          ),
        ),
      ),
    );
  }
}
