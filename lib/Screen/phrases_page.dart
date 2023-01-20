
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toku/component/items.dart';
import 'package:toku/model/DataEntities.dart';
import 'package:toku/model/DataPhrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Phrases> PhrasesData=const[
    Phrases(
      JPName: 'Kimasu ka',
      ENName: 'Are you coming',
      sound: 'are_you_coming.wav',
    ), Phrases(
      JPName: 'Kōdoku suru koto o wasurenaide kudasai',
      ENName: 'Dont forget to subscribe' ,
      sound: 'dont_forget_to_subscribe.wav',
    ), Phrases(
      JPName: 'Go kibun wa ikagadesu ka',
      ENName: 'How are you feeling',
      sound: 'how_are_you_feeling.wav',
    ), Phrases(
      JPName: 'Puroguramingu ga daisuki',
      ENName: 'I love programming',
      sound: 'i_love_programming.wav',
    ), Phrases(
      JPName: 'Watashi wa anime ga daisukidesu',
      ENName: 'I love anime',
      sound: 'i_love_anime.wav',
    ), Phrases(
      JPName: 'Puroguramingu wa kantan',
      ENName: 'Programming is easy ',
      sound: 'programming_is_easy.wav',
    ), Phrases(
      JPName: 'Namae wa nandesu ka',
      ENName: 'What is your name',
      sound: 'what_is_your_name.wav',
    ), Phrases(
      JPName: 'Doko ni iku no',
      ENName: 'Where are you going ',
      sound: 'where_are_you_going.wav',
    ), Phrases(
      JPName: 'Hai kimasu',
      ENName: 'Yes im coming',
      sound: 'yes_im_coming.wav',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FEF6DB'),

      appBar: AppBar(
        title:Text('Phrases',),
        backgroundColor: HexColor('46322B'),

      ),
      body: ListView.separated(
        separatorBuilder: (context,index){
          return Container(
            height: 1,
          );
        },
        itemBuilder: (context,index){
          return phrasesItems(
            dataOfPhrases: PhrasesData[index],
              color: HexColor('19A8BE'),
              typesound: 'phrases',
          );
        },
        itemCount: PhrasesData.length,
      ),
    );
  }
}
