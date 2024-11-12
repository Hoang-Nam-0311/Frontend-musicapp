import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  @override
  _LibraryViewState createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Your Library"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Handle add action
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: "Playlists"),
            Tab(text: "Artists"),
            Tab(text: "Albums"),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildPlaylistTab(),
          _buildArtistsTab(),
          _buildAlbumsTab(),
        ],
      ),
    );
  }

  Widget _buildPlaylistTab() {
    // Mockup of playlists
    final playlists = [
      "Liked Songs",
      "Daily Mix 1",
      "Chill Hits",
      "Discover Weekly",
      "Top Hits 2023",
    ];

    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: playlists.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.music_note, color: Colors.white),
          title: Text(
            playlists[index],
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "${(index + 1) * 10} songs",
            style: TextStyle(color: Colors.grey),
          ),
          onTap: () {
            // Handle playlist tap
          },
        );
      },
    );
  }

  Widget _buildArtistsTab() {
    // Mockup of artists
    final artists = [
      "Drake",
      "Taylor Swift",
      "Ed Sheeran",
      "Ariana Grande",
      "BTS",
    ];

    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: artists.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[800],
            child: Text(
              artists[index][0],
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text(
            artists[index],
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Handle artist tap
          },
        );
      },
    );
  }

  Widget _buildAlbumsTab() {
    // Mockup of albums
    final albums = [
      "Album 1",
      "Album 2",
      "Album 3",
      "Album 4",
      "Album 5",
    ];

    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: albums.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.album, color: Colors.white),
          title: Text(
            albums[index],
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "Artist Name",
            style: TextStyle(color: Colors.grey),
          ),
          onTap: () {
            // Handle album tap
          },
        );
      },
    );
  }
}
