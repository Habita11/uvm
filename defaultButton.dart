import 'package:flutter/material.dart';

Widget  DefaultButton({
  required Function()? onPressed,
  required String data
})=>
    MaterialButton(
      onPressed:onPressed ,
      color: Colors.purple,
      child:Text(data,
        style:const TextStyle(color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold),),
      elevation: 10,
      minWidth:double.infinity,

    );




