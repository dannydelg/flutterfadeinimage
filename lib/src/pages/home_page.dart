import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_fer/src/pages/widgets/super_floatingaction.dart';
import 'package:provider_fer/src/pages/widgets/super_text.dart';
import 'package:provider_fer/src/providers/heroesinfo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${heroesInfo.heroe} ${heroesInfo.ageheroe.toString()}'),
      ),
      body: Center(
        child: SuperText(),
      ),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
