import 'package:flutter/material.dart';
import 'package:flutter_application_1/playlist_screen.dart';
import 'package:flutter_application_1/album_screen.dart';
import 'package:flutter_application_1/artist_screen.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to PlaylistScreen when PLAYLIST button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaylistScreen()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/PLAYLISTScreen.jpg', // Replace with your playlist image
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 10),
                  Text('PLAYLISTS'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to AlbumScreen when ALBUMS button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlbumScreen()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/ALBUMScreen.jpg', // Replace with your album image
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 10),
                  Text('ALBUMS'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ArtistScreen when ARTISTS button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArtistScreen()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/ARTISTScreen.jpg', // Replace with your artist image
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 10),
                  Text('ARTISTS'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
