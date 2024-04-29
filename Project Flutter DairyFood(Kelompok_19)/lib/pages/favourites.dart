import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Model untuk postingan yang disukai
class Post {
  final String title;
  final String content;

  Post({required this.title, required this.content});
}

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  FavouritesState createState() => FavouritesState();
}

class FavouritesState extends State<Favourites> {
  // List untuk menyimpan postingan yang disukai
  List<Post> favoritePosts = [];

  // Fungsi untuk menambahkan potingan ke dalam daftar favorit
  void addToFavorites(Post post) {
    setState(() {
      favoritePosts.add(post);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Favourites",
                  style: GoogleFonts.sofia(
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 203, 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Tampilkan daftar postingan yang disukai
              ListView.builder(
                shrinkWrap: true,
                itemCount: favoritePosts.length,
                itemBuilder: (context, index) {
                  final post = favoritePosts[index];
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.content),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}