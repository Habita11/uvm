import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:http/http.dart' as http;
import 'Home.dart';

class TimerScreen extends StatelessWidget {
  final int sec;
 const  TimerScreen({Key? key,
  required this.sec
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(leading:IconButton(onPressed:(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const Home() ));
      onPop();
      FlutterRingtonePlayer.stop();
    } ,
      icon:const Icon(Icons.arrow_back),) ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularCountDownTimer(
              duration:sec,
              initialDuration: 0,
              controller: CountDownController(),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              ringColor: Colors.grey[300]!,
              fillColor: Colors.purpleAccent[100]!,
              backgroundColor: Colors.purple[500],
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle:const TextStyle(
                  fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.MM_SS,
              isReverse: true,
              isTimerTextShown: true,
              autoStart: true,
              onStart: () {
                debugPrint('Countdown Started');
              },
              onComplete: () {
                debugPrint('Countdown Ended');
                FlutterRingtonePlayer.playRingtone();

              },
            )
          ],
        ),
      ) ,
    );
  }
  onPop()async{await http.get(Uri.parse('http://192.168.4.1/off'));}
}
