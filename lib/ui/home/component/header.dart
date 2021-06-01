part of '../home_screen.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12, left: 12, top: 12),
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Hi, ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 28,
                    ),
                    children: [
                      TextSpan(
                          text: "Kendall",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          )),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    "https://cdn0-production-images-kly.akamaized.net/AkuAI2VGpp3mlDB_gxSWEp2aRXw=/640x640/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2238713/original/042412400_1528178999-Kendall-Jenner4.jpg",
                    width: 40,
                  ),
                )
              ],
            ),
            SizedBox(height: 8),
            Text("Create your best gallery today")
          ],
        ),
      ),
    );
  }
}
