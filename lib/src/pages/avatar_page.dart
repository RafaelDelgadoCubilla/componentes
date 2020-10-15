import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              //foregroundColor: Colors.white,
              backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/671/338/png-clipart-fifa-world-cup-football-player-soccer-ball-posters-sport-football-boot.png'),
              radius: 22.0
              //minRadius: 20.0,
              //maxRadius: 50.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://media-cdn.canyon.com/on/demandware.static/-/Sites-canyon-master/default/dwb541b725/images/full/full_2021_/2021/full_2021_lux-cf-7_2646_bu-wh_P5.png'),
          fadeInDuration: Duration(milliseconds: 200),
        )
      ),
    );
  }
}