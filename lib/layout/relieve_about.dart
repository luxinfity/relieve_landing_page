import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:relieve_landing_page/res/color.dart';
import 'package:relieve_landing_page/res/fonts.dart';
import 'package:relieve_landing_page/res/space.dart';

class RelieveAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthContext = MediaQuery.of(context).size.width;
    return Container(
      color: AppColor.colorPrimaryDark,
      child: widthContext > 900 ? getRow() : getColumn(),
    );
  }

  Row getRow() {
    return Row(
      children: <Widget>[
        Expanded(child: AboutDescription()),
        Expanded(child: AboutImage())
      ],
    );
  }

  Column getColumn() {
    return Column(
      children: <Widget>[
        AboutDescription(),
        Container(width: double.infinity, height: 300, child: AboutImage())
      ],
    );
  }
}

class AboutDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Space.x64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/loudspeaker.png', height: Space.x32),
          Container(height: Space.x16),
          Text(
            '#IamAwareWeAreAware',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: Space.x24,
            ),
          ),
          Container(height: Space.x16),
          Text(
            'Relieve hadir sebagai mitra pemerintah dalam media penyampaian informasi terhadap penanggulangan bencana.',
            style: Font.openSans.getStyle(color: Colors.white, size: Space.x16),
          ),
          Container(height: Space.x16),
          Text.rich(
            TextSpan(
              text: 'Gabung bersama relieve dengan mengkampanyekan hastag ',
              style:
                  Font.openSans.getStyle(color: Colors.white, size: Space.x16),
              children: [
                TextSpan(
                  text: '#IamAwareWeAreAware',
                  style: TextStyle(backgroundColor: AppColor.colorAccent),
                ),
                TextSpan(
                  text:
                      ' diseluruh sosial media kamu, bertujuan untuk mengajak dan menggerakan masyarakat untuk turut berpartisipasi dalam proses antisipasi dan mitigasi bencana.',
                ),
              ],
            ),
          ),
          Container(height: Space.x24),
          Row(
            children: <Widget>[
              RaisedButton(
                elevation: 0,
                highlightElevation: 0,
                color: AppColor.colorPrimaryDark,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Tentang RelieveID',
                      style: Font.openSans.getStyle(
                        color: Colors.white,
                        size: Space.x14,
                      ),
                    ),
                    Container(width: Space.x6),
                    Icon(Icons.arrow_forward,
                        size: Space.x18, color: Colors.white)
                  ],
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AboutImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/its-disastah.png',
      fit: BoxFit.cover,
    );
  }
}
