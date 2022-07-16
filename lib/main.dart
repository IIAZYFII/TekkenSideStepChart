import 'package:flutter/material.dart';
import 'package:tekken_side_step/pages/character_specific.dart';
import 'package:tekken_side_step/pages/home.dart';
import 'package:tekken_side_step/pages/load_saved_characters.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
   '/' : (context) => const Home(),
    '/save' : (context) => const LoadSavedCharacters(),
    '/character_specific': (context) => const CharacterSpecific(),

  }
));






