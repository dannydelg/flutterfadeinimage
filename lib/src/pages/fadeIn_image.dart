import 'dart:developer';

import 'package:flutter/material.dart';

class FadeInImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeinImage en flutter'),
      ),
      body: ListView.builder(
        itemCount: 200,
        itemBuilder: (BuildContext context, int index) {
          index = index + 10;
          return FadeInImage(
            placeholder: AssetImage('assets/images/loadingcolor.gif'),
            image: NetworkImage('https://picsum.photos/id/$index/800/600'),
          );
        },
      ),
    );
  }
}
