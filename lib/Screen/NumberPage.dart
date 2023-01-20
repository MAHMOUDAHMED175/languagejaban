import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/component/items.dart';

import '../model/DataEntities.dart';

class NamedPage extends StatelessWidget {
  const NamedPage({Key? key}) : super(key: key);
  final List<Data> numbers=const [
    Data(
      image: 'assets/images/numbers/number_one.png',
      JPName: 'Ichi',
      ENName: 'One',
      sound: 'number_one_sound.mp3',
    ),
    Data(
      image: 'assets/images/numbers/number_two.png',
      JPName: 'Ni',
      ENName: 'Two',
      sound: 'number_two_sound.mp3',
    ),Data(
      image: 'assets/images/numbers/number_three.png',
      JPName: 'San',
      ENName: 'Three',
      sound: 'number_three_sound.mp3',
    ),
    Data(
      image: 'assets/images/numbers/number_four.png',
      JPName: 'Shi',
      ENName: 'Four',
      sound: 'number_four_sound.mp3',
    ),
    Data(
      image: 'assets/images/numbers/number_five.png',
      JPName: 'Go',
      ENName: 'Five',
      sound: 'number_five_sound.mp3',
    ),
    Data(
      image: 'assets/images/numbers/number_six.png',
      JPName: 'Roku',
      ENName: 'Six',
      sound: 'number_six_sound.mp3',
    ),
    Data(
      image: 'assets/images/numbers/number_seven.png',
      JPName: 'Sebun',
      ENName: 'Seven',
      sound: 'number_seven_sound.mp3',
    ),
    Data(
      image: 'assets/images/numbers/number_eight.png',
      JPName: 'Hachi',
      ENName: 'eight',
      sound: 'number_eight_sound.mp3',
    ),
    Data(
      image: 'assets/images/numbers/number_nine.png',
      JPName: 'KyU',
      ENName: 'Nine',
      sound: 'number_nine_sound.mp3',
    ),
    Data(
      image: 'assets/images/numbers/number_ten.png',
      JPName: 'JU',
      ENName: 'Tin',
      sound: 'number_ten_sound.mp3',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FEF6DB'),

      appBar: AppBar(
        title:Text('Number',),
        backgroundColor: HexColor('46322B'),

      ),
      body: ListView.separated(
        separatorBuilder: (context,index){
          return Container(
            height: 1,
          );
        },
        itemBuilder: (context,index){
          return NumberItems(dataOfItems: numbers[index], color: HexColor('EF9235'),
          typesound: 'numbers',);
        },
        itemCount: numbers.length,
      ),
    );
  }
  // List<Widget> getItems(List<Number> number){
  //   List<Widget> itemlist=[];
  //   for(int i=0;i<number.length;i++)
  //     {
  //       itemlist.add(NumberItems(number:number[i]),);
  //     }
  //   return itemlist;
  // }
}


