import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:relieve_landing_page/res/color.dart';
import 'package:relieve_landing_page/res/fonts.dart';
import 'package:relieve_landing_page/res/space.dart';

class DownloadBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
            child: Image.asset(
          'images/playstore.png',
          scale: 1.2,
        )),
        Container(width: Space.x12),
        InkWell(
            child: Image.asset(
          'images/appstore.png',
          scale: 1.2,
        )),
      ],
    );
  }
}

class HeroContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heightContext = MediaQuery.of(context).size.height;
    return Container(
      height: heightContext + 80,
      child: Column(
        children: <Widget>[
          Container(height: 50),
          Container(
            padding: EdgeInsets.only(left: Space.x21, right: Space.x21),
            child: Text(
              'Cinta dan keselamatan keluarga dalam satu aplikasi',
              textAlign: TextAlign.center,
              style: Font.openSans.getStyle(
                color: AppColor.colorTextBlack,
                size: Space.x28,
              ),
            ),
          ),
          Container(height: Space.x16),
          Text(
            '“I am aware, we are aware”',
            style: Font.openSans.getStyle(
              color: AppColor.colorTextBlack,
              size: Space.x18,
            ),
          ),
          Container(height: Space.x21),
          DownloadBadge(),
          Container(height: Space.x36),
          Image.asset(
            'images/phone-main-page.png',
            scale: 1.2,
          ),
        ],
      ),
    );
  }
}

class RelieveHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heightContext = MediaQuery.of(context).size.height;
    return Container(
      height: heightContext + 80,
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'images/overflow-left.png',
              height: heightContext / 2,
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Image.asset('images/overflow-right.png'),
            height: heightContext / 1.3,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset('images/overflow-bottom.png'),
          ),
          HeroContent(),
        ],
      ),
    );
  }
}
