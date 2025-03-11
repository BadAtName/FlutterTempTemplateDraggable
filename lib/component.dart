//components like tower, obstacle, etc

// ignore_for_file: camel_case_types
import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class pic extends SpriteComponent with DragCallbacks{
  @override
  FutureOr<void> onLoad() async{
    sprite = await Sprite.load("ATMIN.png");
    size = Vector2.all(500);
    position = Vector2(0, 0);
    anchor = Anchor.center;
  }

  pic({super.position}) : super(size: Vector2.all(100));

@override
set debugMode(bool debugMode) {
    debugMode = true;
    super.debugMode = debugMode;
  }
  @override
  void update(double dt) {
    super.update(dt);
    debugColor = isDragged ? Colors.greenAccent : Colors.purple;
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    position += event.localDelta;
  }
}