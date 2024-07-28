
import 'package:flutter/material.dart';

import '../../utils/Utils.dart';
import '../color/color_code.dart';



class OutLineIconTextButton extends StatefulWidget {
  String _label;
  String _icon;
  double _height;
  double _width;
  double _textfontsize;
  OutLineIconTextButton( String label, String icon,
      double height,double width,
      double textfontsize,
      {Key? key})
      :
        _label = label,
        _icon=icon,
  _height=height,
  _width=width,
  _textfontsize=textfontsize,
        super(key: key);
  @override
  State<OutLineIconTextButton> createState() => _OutLineIconTextButtonState();

}
//height * 0.07
// width * 0.05
class _OutLineIconTextButtonState extends State<OutLineIconTextButton> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: widget._height,
      width: widget._width,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          side: BorderSide(
            color: Color(
                Utils.hexStringToHexInt(ColorsCode.buttonBorder)),
            width: 1.4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                widget._icon,
                width: 32.0,
                height: 32.0,
              ),
              SizedBox(width: 8.0),
              Text(
                '${widget._label}',
                style: TextStyle(
                  fontSize:widget._textfontsize,
                  color: Color(Utils.hexStringToHexInt(
                      ColorsCode.buttonColortext)),
                  //
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
