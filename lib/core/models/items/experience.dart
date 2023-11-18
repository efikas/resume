import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class ExperienceModel {
  String? title;
  String? company;
  String? date;
  String? experience;
  GlobalKey<ExpansionTileCardState>? key;

  ExperienceModel({this.title, this.company, this.date, this.experience, this.key});
}
