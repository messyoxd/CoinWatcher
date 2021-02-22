import 'package:flutter/material.dart';

class FormFieldCustom extends StatelessWidget {
  final String campo;
  final Function funcOnTap, validacao;
  final TextInputType type;
  final TextEditingController controller;
  final IconData icon;

  const FormFieldCustom({
    Key key,
    this.campo,
    this.funcOnTap,
    this.type,
    this.icon,
    this.validacao,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: controller,
            obscureText: type == TextInputType.visiblePassword,
            // obscureText: false,
            onTap: funcOnTap,
            keyboardAppearance: Brightness.dark,
            keyboardType: type,
            validator: validacao,
            style: TextStyle(
              color: Color(0xfff38282),
              fontSize: 16,
              fontFamily: 'Yu Gothic',
            ),
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.black,
              ),
              hintText: campo,
              // hintText: "Campo",
              hintStyle: TextStyle(
                color: Color(0xfff38282),
                fontWeight: FontWeight.w300,
                fontFamily: 'Yu Gothic',
              ),
              border: InputBorder.none,
            ),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
