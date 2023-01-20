import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/model/DataEntities.dart';

import '../component/items.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);
final List<Data> FamilyData=const[
  Data(
  image: 'assets/images/family_members/family_father.png',
  JPName: 'Chichioya',
  ENName: 'Father',
  sound: 'father.wav',
  ),
  Data(
  image: 'assets/images/family_members/family_mother.png',
  JPName: 'Hahaoya',
  ENName: 'Mother',
  sound: 'mother.wav',
  ),Data(
  image: 'assets/images/family_members/family_daughter.png',
  JPName: 'Musume',
  ENName: 'Daughter',
  sound: 'daughter.wav',
  ),
  Data(
    image: 'assets/images/family_members/family_son.png',
    JPName: 'Musuko',
    ENName: 'Son',
    sound: 'son.wav',
  ),
  Data(
  image: 'assets/images/family_members/family_grandfather.png',
  JPName: 'Ojisan',
  ENName: 'Grand Father',
  sound: 'grand father.wav',
  ),
  Data(
  image: 'assets/images/family_members/family_grandmother.png',
  JPName: 'Sobo',
  ENName: 'Grand Mother',
  sound: 'grand mother.wav',
  ),
  Data(
  image: 'assets/images/family_members/family_older_brother.png',
  JPName: 'Nisan',
  ENName: 'Older Brother',
  sound: 'older bother.wav',
  ),
  Data(
  image: 'assets/images/family_members/family_older_sister.png',
  JPName: 'Ane',
  ENName: 'Older Sister',
  sound: 'older sister.wav',
  ),

  Data(
  image:'assets/images/family_members/family_younger_brother.png',
  JPName:'Ototo',
  ENName:'Younger Brother',
  sound:'younger brohter.wav',
  ),
  Data(
  image:'assets/images/family_members/family_younger_sister.png',
  JPName:'Imoto',
  ENName:'Younger Sister',
  sound:'younger sister.wav',
  ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FEF6DB'),

      appBar: AppBar(
        title:Text('Family Members',),
        backgroundColor: HexColor('46322B'),

      ),
      body: ListView.separated(
        separatorBuilder: (context,index){
          return Container(
            height: 1,
          );
        },
        itemBuilder: (context,index){
          return NumberItems(dataOfItems: FamilyData[index], color:HexColor('558B37'),
          typesound: 'family_members',);
        },
        itemCount: FamilyData.length,
      ),
    );
  }
}
