import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  AccountState createState() => AccountState();
}

class AccountState extends State<Account> {
  int followersCount = 100; // Contoh jumlah pengikut
  int followingCount = 150; // Contoh jumlah following
  int recipesCount = 50; // Contoh jumlah resep

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Action when Profile is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.orange, Colors.deepOrange],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/nurdila.jpeg'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Nur Dila Yuanti",
                      style: GoogleFonts.sofia(
                        textStyle: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FollowersPage()),
                            );
                          },
                          child: Column(
                            children: [
                              Text(
                                'Followers',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                followersCount.toString(),
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FollowingPage()),
                            );
                          },
                          child: Column(
                            children: [
                              Text(
                                'Following',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                followingCount.toString(),
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RecipesPage()),
                            );
                          },
                          child: Column(
                            children: [
                              Text(
                                'Recipes',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                recipesCount.toString(),
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.edit, color: Colors.orange),
              title: Text("Edit Profile", style: TextStyle(fontSize: 18)),
              onTap: () {
                // Action when Edit Profile is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.language, color: Colors.orange),
              title: Text("Language Settings", style: TextStyle(fontSize: 18)),
              onTap: () {
                // Action when Language Settings is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.orange),
              title: Text("Logout", style: TextStyle(fontSize: 18)),
              onTap: () {
                // Action when Logout is tapped
              },
            ),
            // Add more ListTile widgets for other options
          ],
        ),
      ),
    );
  }
}

class FollowersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Followers'),
      ),
      body: Center(
        child: Text('List of followers'),
      ),
    );
  }
}

class FollowingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Following'),
      ),
      body: Center(
        child: Text('List of following'),
      ),
    );
  }
}

class RecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Center(
        child: Text('List of recipes'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Text('Edit Profile'),
      ),
    );
  }
}
