//THE THE app

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:ngawi_td/constant.dart';
import 'package:ngawi_td/Game/ngawitd_game.dart';

class GameApp extends StatefulWidget{
  const GameApp({super.key});

  @override
  State<StatefulWidget> createState() => GameAppState();
}

class GameAppState extends State<GameApp>{
late final NgawiTdGame game;
  @override
  void initState(){
    super.initState;
    game = NgawiTdGame();
    }
  
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FittedBox(
              child: SizedBox(
                width: GameWidth,
                height: GameHeight,
                child: GameWidget(game: game)),
            ),
          ),
        ),
      ),
    );
  }
}
    
