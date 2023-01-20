
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/component/items.dart';
import 'package:toku/model/DataEntities.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Data> ColorsData=const[
    Data(
      image: 'assets/images/colors/color_black.png',
      JPName: 'Burakku',
      ENName: 'black',
      sound: 'black.wav',
    ),
    Data(
      image: 'assets/images/colors/color_brown.png',
      JPName: 'Chairo',
      ENName: 'brown',
      sound: 'brown.wav',
    ),Data(
      image: 'assets/images/colors/color_dusty_yellow.png',
      JPName: 'Hokori ppoi kiiro',
      ENName: 'dusty_yellow',
      sound: 'dusty yellow.wav',
    ),
    Data(
      image: 'assets/images/colors/color_gray.png',
      JPName: 'Gure',
      ENName: 'gray',
      sound: 'gray.wav',
    ),
    Data(
      image: 'assets/images/colors/color_green.png',
      JPName: 'Midori',
      ENName: 'green',
      sound: 'green.wav',
    ),
    Data(
      image: 'assets/images/colors/color_red.png',
      JPName: 'Aka',
      ENName: 'red',
      sound: 'red.wav',
    ),
    Data(
      image: 'assets/images/colors/color_white.png',
      JPName: 'Shiroi',
      ENName: 'white',
      sound: 'white.wav',
    ),
    Data(
      image: 'assets/images/colors/yellow.png',
      JPName: 'Kiiro',
      ENName: 'yellow',
      sound: 'yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FEF6DB'),

      appBar: AppBar(
        title:Text('Colors',),
        backgroundColor: HexColor('46322B'),

      ),
      body: ListView.separated(
        separatorBuilder: (context,index){
          return Container(
            height: 1,
          );
        },
        itemBuilder: (context,index){
          return NumberItems(
              dataOfItems:ColorsData[index],
              color: HexColor('8425CD'),
              typesound: 'colors',
          );
        },
        itemCount: ColorsData.length,
      ),
    );
  }
}
