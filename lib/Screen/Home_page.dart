import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/Screen/NumberPage.dart';
import 'package:toku/Screen/colors_page.dart';
import 'package:toku/Screen/family_page.dart';
import 'package:toku/Screen/phrases_page.dart';
import 'package:toku/component/constant.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../component/items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FEF6DB'),
      appBar: AppBar(
        backgroundColor: HexColor('46322B'),
        title: const Text('Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),),
      ),
      body: Column(
        children: [
          category(color: Colors.orange,text: 'Number',
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const NamedPage()));
          },
          ),
          category(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const FamilyPage()));
          },color: Colors.green,text: 'Family Members',),
          category(color: Colors.deepPurpleAccent,text: 'Colors',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ColorsPage()));
              }
          ),
          category(color: Colors.blue,text: 'Phases',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PhrasesPage()));
              }
          ),
          Container(
            color: const Color(0xffFFF6DC),
            child:  Image(
              image:AssetImage('assets/images/light.png'),
              height:MediaQuery.of(context).size.height*0.4,
              width: double.infinity,

            ),
          ),

        ],
      ),
    );
  }
}
