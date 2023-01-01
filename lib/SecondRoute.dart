import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
const SecondRoute({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('돌아가기'),
          onPressed: () => {            
            Navigator.pop(context)
          },
        ),
      ),
    );
  
  }
}