
import 'package:flame/camera.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:ngawi_td/Game/ngawitd_world1.dart';
import 'package:ngawi_td/constant.dart';

class NgawiTdGame extends FlameGame{
  NgawiTdGame():super(
    world: NgawiTdWorld(),
    camera: CameraComponent.withFixedResolution(
      width: GameWidth, 
      height: GameHeight,
    )
  );


  }

  @override
  Color backgroundColor() {
    return Colors.white;
  }