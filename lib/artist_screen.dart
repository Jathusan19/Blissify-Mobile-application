// artist_screen.dart

import 'package:flutter/material.dart';

class ArtistScreen extends StatelessWidget {
  final List<Artist> artists = [
    Artist(name: 'Yuvan', imageUrl: 'assets/yuvan.jpg'),
    Artist(name: 'Harris', imageUrl: 'assets/harris.jpg'),
    Artist(name: 'ARR', imageUrl: 'assets/arr.jpg'),
    Artist(name: 'Aniruth', imageUrl: 'assets/aniruth.jpg'),
    Artist(name: 'Raja', imageUrl: 'assets/raja.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artists'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: artists.map((artist) {
          return ArtistItem(artist: artist, onTap: () {
            // Navigate to the screen with songs when an artist is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SongsScreen(artistName: artist.name),
              ),
            );
          });
        }).toList(),
      ),
    );
  }
}

class ArtistItem extends StatelessWidget {
  final Artist artist;
  final VoidCallback onTap;

  const ArtistItem({
    Key? key,
    required this.artist,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(artist.imageUrl),
            ),
            SizedBox(height: 8.0),
            Text(
              artist.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}

class Artist {
  final String name;
  final String imageUrl;

  Artist({required this.name, required this.imageUrl});
}

class SongsScreen extends StatelessWidget {
  final String artistName;

  const SongsScreen({Key? key, required this.artistName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace this with the actual content of the screen
    return Scaffold(
      appBar: AppBar(
        title: Text('Songs by $artistName'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with the actual number of songs
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('$artistName Song ${index + 1}'),
            onTap: () {
              // Add your logic to play the selected song
              _playSong(context, '$artistName Song ${index + 1}');
            },
          );
        },
      ),
    );
  }

  // Add your logic to play the selected song
  void _playSong(BuildContext context, String songName) {
    // Replace this with your logic to play the song
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Playing: $songName'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: ArtistScreen(),
    ),
  );
}
