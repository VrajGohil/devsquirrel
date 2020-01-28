import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  MenuButton({@required this.color,@required this.onTap});
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          ClayContainer(
            height: 7.0,
            width: 40.0,
            spread: 3,
            borderRadius: 36,
            depth: 50,
            color: color,
          ),
          SizedBox(
            height: 5.0,
          ),
          ClayContainer(
            height: 7.0,
            width: 40.0,
            depth: 50,
            borderRadius: 36,
            spread: 3,
            color: color,
          ),
          SizedBox(
            height: 5.0,
          ),
          ClayContainer(
            height: 7.0,
            spread: 3,
            depth: 50,
            width: 40.0,
            borderRadius: 36,
            color: color,
          ),
        ],
      ),
    );
  }
}