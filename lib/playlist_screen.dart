// TODO Implement this library.// playlist_screen.dart

// playlist_screen.dart

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PlaylistScreen(),
    ),
  );
}

class PlaylistScreen extends StatelessWidget {
  final List<Playlist> playlists = [
    Playlist(name: 'Romantic YUVAN', imageUrl: 'assets/yuvan.jpg'),
    Playlist(name: 'LOCAL', imageUrl: 'assets/local.jpg'),
    Playlist(name: 'ROCK', imageUrl: 'assets/rock.jpg'),
    Playlist(name: 'Raja Hits', imageUrl: 'assets/raja.jpg'),
    Playlist(name: 'ANIRUTH', imageUrl: 'assets/aniruth.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playlists'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: playlists.map((playlist) {
          return PlaylistItem(playlist: playlist);
        }).toList(),
      ),
    );
  }
}

class PlaylistItem extends StatelessWidget {
  final Playlist playlist;

  const PlaylistItem({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(playlist.imageUrl),
          ),
          SizedBox(height: 8.0),
          Text(
            playlist.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

class Playlist {
  final String name;
  final String imageUrl;

  Playlist({required this.name, required this.imageUrl});
}

