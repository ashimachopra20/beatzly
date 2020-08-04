
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
AudioPlayer audioPlayer = AudioPlayer();
 
playit() {
   var a=AudioCache();
  a.play('bey711.mp3');
  }

pauseit(){

audioPlayer.pause();
}

stopit() {

audioPlayer.stop();

}


var mymusic=Icon(Icons.queue_music);
music(){
  print(' my music player');
}

var myhome= Scaffold(
    appBar: AppBar(
      
      title: Center(child: Text('BEATZLY',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic, 
      color:Colors.cyanAccent),)),
      actions: <Widget>[ IconButton(icon: mymusic,onPressed: music,)],
    backgroundColor: Colors.black,
    )
 ,
  body: Center(
  
    child: Column(
  
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Stack(
       // alignment: Alignment.center,
      // height: 400,
        //width: 300,
        children:<Widget>[ Card(
          
          color: Colors.tealAccent,
          child: Image.asset('bey.jpg'), ),
          Container(
            padding:EdgeInsets.only(top:500) ,
            alignment: Alignment.center,
          child:Text('SONG: 7/11 (BEYONCE)',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic),)             
        
       ) ]),
    
      Container(
        //height: 100,
        //width: 100,
        child: Card(
          elevation:5,
       child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
         
                  children: <Widget>[
                  
        const RaisedButton(
          color: Colors.cyanAccent,
         onPressed: playit, 
          child: Icon(
            Icons.play_arrow, size: 50,
          
          ),
  ), const RaisedButton(
     color: Colors.cyanAccent,
          onPressed: pauseit,
          child: Icon(
            Icons.pause, size: 50,
          
          ),
  )
  ,
   const RaisedButton(
      color: Colors.cyanAccent,
          onPressed: stopit,
          child: Icon(
            Icons.stop, size: 50,)
      , )])))])));
          
 
              
  
musicApp(){
  
  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}