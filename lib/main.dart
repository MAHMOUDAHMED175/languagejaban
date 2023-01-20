import 'package:flutter/material.dart';
import 'package:toku/Screen/Home_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatelessWidget {
   const Toku({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// void main() {
//   runApp(const falll());
// }
//
// class falll extends StatefulWidget {
//   const falll({Key? key}) : super(key: key);
//
//   @override
//   State<falll> createState() => _falllState();
// }
//
// class _falllState extends State<falll> {
//
//
//    final videoURL = "https://youtu.be/Cidyy2n4_8I";
//
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     final videoID = YoutubePlayer.convertUrlToId(videoURL);
//     _controller = YoutubePlayerController(
//         initialVideoId: videoID!,
//         flags: const YoutubePlayerFlags(
//           autoPlay: false,
//         )
//     );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:  Scaffold(
//
//         appBar: AppBar(),
//         body: Column(
//           children: [
//             YoutubePlayer(
//               onReady:()=>debugPrint("wqedwed"),
//               controller: _controller,
//               showVideoProgressIndicator: true,
//               bottomActions: [
//                 CurrentPosition(),
//                 ProgressBar(
//                   isExpanded: true,
//                   controller: _controller,
//
//                   colors: const ProgressBarColors(
//                     playedColor: Colors.red,
//                     handleColor: Colors.yellow,
//                   ),
//                 ),
//               ],
//
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }