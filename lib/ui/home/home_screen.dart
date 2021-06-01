import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

part 'component/header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Header(),
            StaggeredGridView.countBuilder(
              shrinkWrap: true,
              crossAxisCount: 4,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => new Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
                ),
              ),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, 2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            )
          ],
        ),
      ),
    );
  }
}
