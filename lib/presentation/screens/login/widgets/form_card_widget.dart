import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FormCardWidget extends StatefulWidget {
  const FormCardWidget({
    Key? key,
    this.margin = 20,
  }) : super(key: key);

  final double margin;

  @override
  _FormCardWidgetState createState() => _FormCardWidgetState();
}

class _FormCardWidgetState extends State<FormCardWidget> {
  var _obscure = true;

  @override
  Widget build(BuildContext context) {
    return ZStack([
      VStack([
        'Please Log In'.text.bold.size(20).makeCentered(),
        SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            suffixIcon: Icon(
              Icons.mail,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black45,
              ),
            ),
            focusColor: Colors.black45,
            hoverColor: Colors.black45,
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          obscureText: _obscure,
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            suffixIcon: Icon(
              Icons.remove_red_eye_outlined,
            ).onTap(() {
              setState(() => _obscure = !_obscure);
            }),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black45,
              ),
            ),
            focusColor: Colors.black45,
            hoverColor: Colors.black45,
          ),
        ),
      ])
          .box
          .white
          .p32
          .rounded
          .margin(EdgeInsets.only(
            left: widget.margin,
            top: widget.margin,
            right: widget.margin,
            bottom: 0,
          ))
          .make(),
      Image.asset(
        'assets/key.png',
        width: 40,
        height: 40,
      )
          .box
          .white
          .p12
          .roundedFull
          .border(
            color: Vx.orange500,
            width: 10,
          )
          .make()
          .positioned(
            top: widget.margin / 2,
            left: widget.margin / 2,
          ),
    ]);
  }
}
