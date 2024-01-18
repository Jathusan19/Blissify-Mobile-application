// album_screen.dart

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: AlbumScreen(),
    ),
  );
}

class AlbumScreen extends StatelessWidget {
  final List<Album> albums = [
    Album(name: 'POP', imageUrl: 'assets/pop.jpg'),
    Album(name: 'ROCK', imageUrl: 'assets/rock.jpg'),
    Album(name: 'HIPHOP', imageUrl: 'assets/hiphop.jpg'),
    Album(name: 'LOCAL', imageUrl: 'assets/local.jpg'),
    Album(name: 'CLASSIC', imageUrl: 'assets/notes.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Albums'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: albums.map((album) {
          return AlbumItem(album: album);
        }).toList(),
      ),
    );
  }
}

class AlbumItem extends StatelessWidget {
  final Album album;

  const AlbumItem({
    Key? key,
    required this.album,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(album.imageUrl),
          ),
          SizedBox(height: 8.0),
          Text(
            album.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

class Album {
  final String name;
  final String imageUrl;

  Album({required this.name, required this.imageUrl});
}
