//To run app

import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:ngawi_td/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();

  runApp(const GameApp());
}