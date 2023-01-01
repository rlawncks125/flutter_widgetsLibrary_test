import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2/SecondRoute.dart';

class FirstRoute extends StatelessWidget {
const FirstRoute({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("첫번쨰 페이지"),
      ),
      body: Center(        
        child:         
          Column(
            children: [            
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),                
                child: Image.network("https://res.cloudinary.com/dhdq4v4ar/image/upload/v1668551633/back-Portfolio/zc0ogw548s7yn1lxxiig.png"),           
              ),              
              const Text("이미지 입니다 ㅎㅎ"),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondRoute()));
                  }
                  ,
                  child: const Text('다음 페이지 이동')                    
                ),
              )


            ],
          )
        
        ),
    );
  }
}

