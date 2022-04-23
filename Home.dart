import 'package:uvm/timer.dart';
import 'package:http/http.dart' as http ;
import 'package:flutter/material.dart';

import 'dart:core';

import 'defaultButton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [Icon(Icons.timer),
      SizedBox(width: 10,)],
          leading:const Icon(Icons.timer),
          title:const Text('UV Control Panel',
      style: TextStyle(fontWeight: FontWeight.bold,
      fontSize: 24,
      ),)),

      body: Column(
        children: [
          const SizedBox(height: 20,),
          Expanded(
            child: DefaultButton(onPressed:(){
              light1min();
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const TimerScreen( sec: 60,) ));
            },
                data:'1 min' ),
          ),
        const  SizedBox(height: 20,),
          Expanded(
            child: DefaultButton(onPressed:(){
              light3min();
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const TimerScreen( sec: 180,) ));
            },
                data:'3 min' ),
          ),
        const SizedBox(height: 20,),
          Expanded(
            child: DefaultButton(onPressed:(){
              light5min();
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const TimerScreen( sec: 300,) ));
            },
                data:'5 min' ),
          ),
         const SizedBox(height: 20,),
          Expanded(
            child: DefaultButton(onPressed:(){
              light1min();
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const TimerScreen( sec: 420,) ));
            },
                data:'7 min' ),
          ),
         const  SizedBox(height: 20,),
          Expanded(
            child: DefaultButton(onPressed:(){
              light1min();
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const TimerScreen( sec: 600,) ));
            },
                data:'10 min' ),
          ),
          const SizedBox(height: 20,),


        ],
      ),
    );
  }
}
Future light1min()async {

await http.get(Uri.parse('http://192.168.4.1/min'));


}
Future light3min()async {

 await http.get(Uri.parse('http://192.168.4.1/three'));

}
Future light5min()async {

   await http.get(Uri.parse('http://192.168.4.1/five'));

}
Future light7min()async {

  await http.get(Uri.parse('http://192.168.4.1/seven'));

}
Future light10min()async {
 await http.get(Uri.parse('http://192.168.4.1/ten'));

}