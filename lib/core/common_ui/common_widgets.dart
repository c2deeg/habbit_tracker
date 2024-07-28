import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonWidgets {
  static Widget orWithHorizontalLine() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Or',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  static Widget commonHeading(lable, width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          lable,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black,
              fontSize: width,
              fontWeight: FontWeight.w700,
          fontFamily: "Gotham"),
        ),
      ],
    );
  }

  static Widget alreadyhaveAccount(firsttext, sescondtext, ontap) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${firsttext}",
            style: const TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: ontap,
            child: Text(
              "${sescondtext}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00629E), // Use the specified color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
