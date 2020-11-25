import 'package:flutter/material.dart';
import 'package:get_it_demo/app/data/model/meme.dart';

class MemeCard extends StatelessWidget {
  final Meme meme;

  const MemeCard(this.meme);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Category ${meme.category}",
              style: TextStyle(fontSize: 36),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Image.network(meme.imageUrl),
            ),
            SizedBox(height: 8),
            Text("Caption: ${meme.caption}"),
          ],
        ),
      ),
    );
  }
}
