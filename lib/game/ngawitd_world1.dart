import 'dart:async';
import 'package:flame/components.dart';
import 'package:ngawi_td/Game/ngawitd_game.dart';
import 'package:ngawi_td/component.dart';

class NgawiTdWorld extends World with HasGameRef<NgawiTdGame>{
@override
  FutureOr<void> onLoad() {
    super.onLoad();
    add(pic());
}}