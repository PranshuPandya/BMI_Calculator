import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.data, this.onTap});
  final String data;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            data,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        // padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}
