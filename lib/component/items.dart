
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/model/DataPhrases.dart';
import '../model/DataEntities.dart';
class category extends StatelessWidget {
  category({Key? key,  required this.text,required this.color,this.onTap,}) : super(key: key) ;

  String? text;
  Color? color;
  //يكنى كتبت ()Function
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    //  علشان اعرف ادوس على مجموعه عناصر وودجت مع بعض  نفس عمل ال InkWell
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.only(left: 10.0),
        alignment: Alignment.centerLeft,
        color: color,
        height: 65.0,
        width: double.infinity,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 15.0,

          ),
        ),

      ),
    );
  }

}
class NumberItems extends StatelessWidget {
  const NumberItems({Key? key, required this.dataOfItems, required this.color, required this.typesound}) : super(key: key);
 final Data dataOfItems;
 final Color color;
 final String typesound;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.15,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image(
              image:AssetImage(dataOfItems.image),


            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text(
                    dataOfItems.JPName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                    ),),
                  Container(
                    height: 1.0,
                    color: Colors.white,
                  ),
                  Text(
                    dataOfItems.ENName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                    ),),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon:const Icon(Icons.play_arrow,
            color: Colors.white,
              size: 35.0,
            ),
              onPressed: () {
                try{
                  AudioCache player=AudioCache(prefix: 'assets/sounds/$typesound/');
                  player.play(dataOfItems.sound);
                } catch(Error){
                  print(Error);
                }
                 },
          ),
          ),
        ],
      ),
    );
  }
}

class phrasesItems extends StatelessWidget {
  const phrasesItems({Key? key, required this.dataOfPhrases, required this.color, required this.typesound}) : super(key: key);
  final Phrases dataOfPhrases;
  final Color color;
  final String typesound;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.15,
      color: color,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text(
                    dataOfPhrases.JPName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                    ),),
                  Container(
                    height: 1.0,
                    color: Colors.white,
                  ),
                  Text(
                    dataOfPhrases.ENName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                    ),),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon:const Icon(Icons.play_arrow,
                color: Colors.white,
                size: 35.0,
              ),
              onPressed: () {
                try{
                  AudioCache player=AudioCache(prefix: 'assets/sounds/$typesound/');
                  player.play(dataOfPhrases.sound);
                } catch(Error){
                  print(Error);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

