import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_gallery/data/data.dart';
import 'package:photo_gallery/ui/ui.dart';
import 'package:transparent_image/transparent_image.dart';

part 'component/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7fa),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            StaggeredGridView.countBuilder(
              shrinkWrap: true,
              crossAxisCount: 4,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Data.furniture.length,
              itemBuilder: (BuildContext context, int index) => new Container(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: Data.furniture[index],
                ),
              ),
              staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ],
        ),
      ),
    );
  }
}
