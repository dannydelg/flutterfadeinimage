import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_fer/src/providers/heroesinfo.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(heroesInfo.heroe)],
    );
  }
}
