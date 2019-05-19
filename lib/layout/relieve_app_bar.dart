import 'package:flutter_web/material.dart';
import 'package:relieve_landing_page/res/color.dart';
import 'package:relieve_landing_page/res/space.dart';

class RelieveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Space.x32, right: Space.x32),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: Space.x64, right: Space.x18),
            child: Image.asset("images/relieve-icon.png"),
          ),
          Expanded(
            child: Text(
              "RelieveID",
              style: TextStyle(color: AppColor.colorPrimaryDark, fontWeight: FontWeight.bold, fontSize: Space.x18),
            ),
          ),
          FlatButton(
            child: Text(
              "Tentang",
              style: TextStyle(color: AppColor.colorTextBlack),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
