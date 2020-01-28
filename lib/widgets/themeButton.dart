import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  ThemeButton({@required this.color,@required this.onTap});
  final Color color;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClayContainer(
        color: color,
        spread: 1,
        curveType: CurveType.concave,
        depth: 100,
        width: 25,
        height: 25,
        borderRadius: 50,
      ),
    );
  }
}