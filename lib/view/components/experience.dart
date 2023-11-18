import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:resume/app/constants.dart';
import 'package:resume/core/models/items/experience.dart';

class ExperiencesCard extends StatelessWidget {
  ExperiencesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: experiences.map((item) => experienceCard(context, item)).toList(),
    );
  }

  Widget experienceCard(BuildContext context, ExperienceModel exp) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: ExpansionTileCard(
        key: exp.key,
        title: Text(exp.title!, style: const TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(exp.company!, maxLines: 2,)), SizedBox(width: 10,),
            Text(exp.date!),
          ],
        ),
        children: <Widget>[
          const Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                exp.experience!,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
