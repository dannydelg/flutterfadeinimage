import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_fer/src/pages/animacion.dart';
import 'package:provider_fer/src/pages/fadeIn_image.dart';
import 'package:provider_fer/src/pages/future_builder.dart';
import 'package:provider_fer/src/pages/home_page.dart';
import 'package:provider_fer/src/providers/heroesinfo.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HeroesInfo()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'fadein_image',
      routes: {
        'home': (context) => HomePage(),
        'animacion': (context) => Animacion(),
        'future_builder': (context) => MyFutureBuilder(),
        'fadein_image': (context) => FadeInImages()
      },
    );
  }
}
