import 'package:baitaplon/views/album_view.dart';
import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;

  const SongCard({
    Key? key, // Đánh dấu là nullable
    required this.image, // Đánh dấu là required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image,
            ),
          ),
        );
      },
      child: Container(
        width: 140,
        child: Column(
          children: [
            Image(
              image: image,
              width: 140,
              height: 140,
            ),
            Text(
              "Bad Bunny, Drake, Justin Bieber, Taylor Swift, Ed Sheeran",
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
