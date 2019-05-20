import 'package:flutter_web/widgets.dart';
import 'package:relieve_landing_page/res/color.dart';

class HeroContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Cinta dan keselamatan keluarga dalam satu aplikasi'),
        Text('“I am aware, we are aware”'),
      ],
    );
  }
}

class RelieveHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      child: Stack(
        children: <Widget>[
          Image.asset('images/overflow-left.png'),
          Image.asset('images/overflow-right.png'),
          Image.asset('images/overflow-bottom.png'),
          HeroContent(),
        ],
      ),
    );
  }
}
