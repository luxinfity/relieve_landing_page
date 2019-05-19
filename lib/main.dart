import 'package:flutter_web/material.dart';
import 'package:relieve_landing_page/layout/relieve_about.dart';
import 'package:relieve_landing_page/layout/relieve_bottom_bar.dart';
import 'package:relieve_landing_page/layout/relieve_cta.dart';
import 'package:relieve_landing_page/layout/relieve_feature.dart';
import 'package:relieve_landing_page/layout/relieve_hero.dart';
import 'package:relieve_landing_page/layout/relieve_testimonial.dart';
import 'package:relieve_landing_page/res/color.dart';
import 'package:relieve_landing_page/res/fonts.dart';

import 'layout/relieve_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Relieve ID - Family App',
      theme: ThemeData(
        primaryColor: AppColor.colorPrimary,
        fontFamily: Font.openSans.fontFamily,
      ),
      home: MyHomePage(title: 'RelieveID'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RelieveAppBar(),
          RelieveHero(),
          RelieveAbout(),
          RelieveFeature(),
          RelieveTestimonial(),
          RelieveCTA(),
          RelieveBottomBar(),
        ],
      ),
    );
  }
}
