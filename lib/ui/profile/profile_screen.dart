import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_gallery/data/data.dart';
import 'package:transparent_image/transparent_image.dart';

part 'component/profile_appbar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> data = [];
  int index = 0;

  @override
  void initState() {
    super.initState();
    data = Data.furniture;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xfff6f7fa),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(55), child: ProfileAppbar()),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xfff6f7fa),
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150),
                  padding: EdgeInsets.only(top: 60),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Kendall",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Edit  |  Share",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      SizedBox(height: 14),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          "I love watching basketball player and ride it ❤️, 25 y.o - LA",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 25,
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  index = 0;
                                  data = Data.furniture;
                                });
                              },
                              child: Text(
                                "Collection",
                                style: TextStyle(
                                  color:
                                      index == 0 ? Colors.black : Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  index = 1;
                                  data = Data.kendall;
                                });
                              },
                              child: Text(
                                "Gallery",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      index == 1 ? Colors.black : Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      StaggeredGridView.countBuilder(
                        shrinkWrap: true,
                        crossAxisCount: 4,
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) =>
                            new Container(
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: data[index],
                          ),
                        ),
                        staggeredTileBuilder: (int index) =>
                            new StaggeredTile.fit(2),
                        mainAxisSpacing: 4.0,
                        crossAxisSpacing: 4.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 120,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        width: 75,
                        height: 75,
                        fit: BoxFit.cover,
                        image:
                            "https://upload.wikimedia.org/wikipedia/commons/c/cc/Kendall_Jenner_in_2019_2.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
