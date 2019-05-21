import 'package:flutter_web/material.dart';
import 'package:relieve_landing_page/res/fonts.dart';
import 'package:relieve_landing_page/res/space.dart';

class RelieveFeature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FeatureSection(
          isSwap: true,
          featureImage: Image.asset('images/fitur-1.png'),
          featureContent: FeatureContent(
            featureIcon: Image.asset(
              'images/feature-ping.png',
              scale: 1.3,
            ),
            featureTitle: 'PING!! daftar kerabat',
            featureDescription:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate. Augue interdum velit euismod in pellentesque.',
          ),
        ),
        FeatureSection(
          featureImage: Image.asset('images/fitur-2.png'),
          featureContent: FeatureContent(
            featureIcon: Image.asset(
              'images/feature-scan.png',
              scale: 1.3,
            ),
            featureTitle: 'Peringatan dini bencana',
            featureDescription:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate. Augue interdum velit euismod in pellentesque.',
          ),
        ),
        FeatureSection(
          isSwap: true,
          featureImage: Image.asset('images/fitur-3.png'),
          featureContent: FeatureContent(
            featureIcon: Image.asset(
              'images/feature-alert.png',
              scale: 1.3,
            ),
            featureTitle:
                'Discover - highlight terkini bencana di seluruh Indonesia',
            featureDescription:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate. Augue interdum velit euismod in pellentesque.',
          ),
        ),
        FeatureSection(
          featureImage: Image.asset('images/fitur-4.png'),
          featureContent: FeatureContent(
            featureIcon: Image.asset(
              'images/feature-call.png',
              scale: 1.3,
            ),
            featureTitle: 'Panggilan Darurat',
            featureDescription:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate. Augue interdum velit euismod in pellentesque.',
          ),
        ),
      ],
    );
  }
}

class FeatureSection extends StatelessWidget {
  final Image featureImage;
  final FeatureContent featureContent;
  final bool isSwap;

  const FeatureSection({
    Key key,
    this.featureImage,
    this.featureContent,
    this.isSwap = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthContext = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: widthContext > 900 ? getRow() : getColumn(),
    );
  }

  Row getRow() {
    return Row(
      children: <Widget>[
        if (isSwap) Expanded(child: featureContent),
        Expanded(child: featureImage),
        if (!isSwap) Expanded(child: featureContent),
      ],
    );
  }

  Column getColumn() {
    return Column(
      children: <Widget>[
        featureContent,
        featureImage,
      ],
    );
  }
}

class FeatureContent extends StatelessWidget {
  final Image featureIcon;
  final String featureTitle;
  final String featureDescription;

  const FeatureContent({
    Key key,
    this.featureIcon,
    this.featureTitle,
    this.featureDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Space.x64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          featureIcon,
          Padding(
            padding: const EdgeInsets.only(left: Space.x16),
            child: Text(
              featureTitle,
              style: Font.openSans.getStyle(size: Space.x18),
            ),
          ),
          Container(height: Space.x18),
          Padding(
            padding: const EdgeInsets.only(left: Space.x16),
            child: Text(featureDescription),
          ),
        ],
      ),
    );
  }
}
