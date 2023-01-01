import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const List<PopupMenuItem> popupMenu = <PopupMenuItem>[
  PopupMenuItem(value: 1,child: Text("메뉴1")),
  PopupMenuItem(value: 2,child: Text("메뉴2")),
  PopupMenuItem(value: 3,child: Text("메뉴3")),  
];


class Dropdown extends StatefulWidget {
  const Dropdown({ Key? key }) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {

  String selectToggle = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("드랍다운 테스트 입니다."),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return popupMenu;
          },
          onSelected: (value) {            
            switch(value){
              case 1:
              selectToggle="메뉴1";
              break;
              case 2:
              selectToggle="메뉴2";
              break;
              case 3:
              selectToggle="메뉴3";
              break;
              default:
              break;
            }        
            // 데이터 변경 트리거 시키기
            setState(() {
              selectToggle = selectToggle;
            });
          },
          )
        ],        
      ),
      body: Center(
        child: Text(selectToggle.length > 1 ? "$selectToggle 가 선택되었습니다." :" 아무것도 선택됐지 않았습니다."),
      ),
    );
  }

  }
