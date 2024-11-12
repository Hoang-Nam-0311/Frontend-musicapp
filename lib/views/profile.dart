import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            // Avatar
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  "https://example.com/profile_image.jpg"), // URL hình ảnh đại diện
            ),
            SizedBox(height: 10),
            // User Name
            Text(
              "User Name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            // Followers and Following Count
            Text(
              "1,234 Followers",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            // Edit Profile Button
            ElevatedButton(
              onPressed: () {
                // Handle profile edit action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            // Playlists Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playlists",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle adding a new playlist
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // List of Playlists
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5, // Số lượng danh sách phát
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Playlist ${index + 1}",
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
            ),
          ],
        ),
      ),
    );
  }
}
