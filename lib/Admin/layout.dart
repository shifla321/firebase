import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:respiro_projectfltr/Admin/Ad_sign_in.dart';
import 'package:respiro_projectfltr/Login/signin.dart';

class LayoutBuilderCheck extends StatelessWidget {
  const LayoutBuilderCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, Constraints){
        if (Constraints.maxWidth > 600){
          return Ad_Sign_in();
        }else 
        {
          return signin();
        }
      },
    );
  }
}