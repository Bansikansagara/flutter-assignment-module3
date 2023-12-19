import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebPhoto extends StatefulWidget {
  @override
  WebPhotoState createState() => WebPhotoState();
}

class WebPhotoState extends State<WebPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Column(

          children: [

            Container(

              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(2),

              child: Column(

                children: [

                  Image.network("https://begrimed-executions.000webhostapp.com/images/camping.jpg",
                    width: 350,
                    height: 350,
                  ),
                ],
              ),
            ),

            SizedBox(width: 30, height: 30),


            Container(

              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(2),

              child: Row(

                children: [

                   Text("Oeschinen Lake Campground \n Kandersteg, Switzerland",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),


                  SizedBox(width: 80),

                  Icon(Icons.star, color: Colors.orange),

                  Text("41"),
                ],
              ),
            ),

            SizedBox(width: 30, height: 30),

            Container(

              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(2),

              child: Row(

                children: [

                  SizedBox(width: 30),

                  IconButton(
                    onPressed: () {
                      call();
                    },
                    icon: Icon(Icons.call, color: Colors.blue),
                  ),
                  SizedBox(width: 70),

                  IconButton(
                    onPressed: () {
                      route();
                    },
                    icon: Icon(Icons.send, color: Colors.blue),
                  ),
                  SizedBox(width: 70),

                  IconButton(
                    onPressed: () {
                      share();
                    },
                    icon: Icon(Icons.share, color: Colors.blue),
                  ),
                ],
              ),
            ),


            Container(

              padding: EdgeInsets.all(7),
              margin: EdgeInsets.all(2),

              alignment: Alignment.center,

              child: Column(

                children: [

                  Text("Kandersteg is a high-altitude resort village in the Bernese Oberland region of Switzerland. Trails, like the challenging Allmenalp, and a cable car head east to Lake Oeschinen. Set at the foot of the Blüemlisalp massif, the lake is also a popular ski area, as is Sunnbüel to the southwest. In the forested Blausee Nature Park to the north, Blausee is a small, trout-filled lake fed by subterranean springs.",
                    style: TextStyle(fontSize: 15),
                      softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void call() {
    var url = Uri.parse("tel: 8758268869");
    launchUrl(url);
  }

  void route() {
    var url = Uri.parse(
        "https://www.google.com/maps/place/3718+Kandersteg,+Switzerland/@46.4657658,7.6309545,12z/data=!3m1!4b1!4m6!3m5!1s0x478f0f604eb2031f:0x6e467d66ca6353f2!8m2!3d46.4947325!4d7.6744357!16zL20vMDI3eWpr?entry=ttu");
    launchUrl(url);
  }

  void share() {
    var url = Uri.parse("uri");
    launchUrl(url);
  }
}
