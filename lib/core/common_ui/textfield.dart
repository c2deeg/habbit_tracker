
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/Utils.dart';
import '../color/color_code.dart';



class TextFieldWidget extends StatefulWidget {
  String _hint;
  final validate;
  String _label;
  String _error;
  TextInputType _textInputType;

  bool _isPassword,
      _isEmail,
      _isPhone,
      _isPass,
      _isDisable,
      _issufi,
      _isaccount;
  bool _readonly;
  int limit;
  bool _isShowForgotPassword;
  String _textfieldHint;
  TextEditingController _controller = TextEditingController();

  TextFieldWidget(String hint, String label, String error, String textfieldHint,
      {Key? key,
      bool isPassword = false,
      bool isEmail = false,
      bool isPhone = false,
      bool isPass = false,
      bool readonly = false,
      bool isDisable = true,
        bool isShowForgotPassword=false,
      TextInputType textInputType = TextInputType.text,
      required TextEditingController controller,
      validate,
      bool issufix = false,
      int limit = 50,
      bool isaccount = false})
      : _hint = hint,

        _label = label,
        _error = error,
        validate = validate,
        _textInputType = textInputType,
        _isPassword = isPassword,
        _isEmail = isEmail,
        _isPhone = isPhone,
        _isPass = isPass,
        _readonly = readonly,
        _isDisable = isDisable,
        _controller = controller,
        _issufi = issufix,
        _isaccount = isaccount,
        limit = limit,
        _textfieldHint = textfieldHint,
  _isShowForgotPassword=isShowForgotPassword,
        super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget._hint,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.bold)),
              widget._isShowForgotPassword
                  ? Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(Utils.hexStringToHexInt(
                              ColorsCode.forgotPasswordColor))),
                    )
                  : const SizedBox()
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          SizedBox(
            height: height * 0.06-5,
            child: Center(
              child: TextFormField(
                validator: widget.validate,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(color: Colors.black, fontSize: 16),
                cursorColor: Theme.of(context).primaryColor,
                controller: widget._controller,
                autofocus: false,
                showCursor: true,
                maxLength: widget.limit,
                readOnly: widget._readonly,
                textAlign: TextAlign.start,
                obscureText: widget._isPass == true ? _obscureText : false,
                obscuringCharacter: '*',
                keyboardType: widget._textInputType,
                decoration: InputDecoration(
                  filled: true,
                  counterText: "",
                  hintText: widget._textfieldHint,
                  fillColor: Colors.transparent,


                  // disabledBorder: const OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.white),
                  // ),

                  suffixIcon: widget._issufi == true
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: sufixs(context),
                        )
                      : const SizedBox(),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width * 0.01),
                      borderSide: BorderSide(
                        color: Color(
                            Utils.hexStringToHexInt(ColorsCode.buttonBorder)),
                        width: 1.4,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.01),
                    borderSide: BorderSide(
                      color: Color(
                          Utils.hexStringToHexInt(ColorsCode.buttonBorder)),
                      width: 1.4,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.03),
                    borderSide: const BorderSide(width: 2.0, color: Colors.red),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(
                        Utils.hexStringToHexInt(ColorsCode.buttonColortext)),
                  ),
                  helperStyle: const TextStyle(fontSize: 12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  sufixs(
    context,
  ) {
    return Icon(
      _obscureText ? Icons.visibility_off : Icons.visibility,
      color: Colors.black,
    );
  }
}
