import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF1E88E5),
                  Color(0xFF42A5F5),
                  Color(0xFF90CAF9),
                ],
              ),
            ),
          ),
          // Overlay pattern
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
            ),
          ),
          // App bar overlay
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const Expanded(
                    child: Text(
                      'Profile Card',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          // Profile card content
          const Center(
            child: ProfileCard(),
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Arjun Kumar Sharma',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Passionate mobile developer from India with 3+ years of experience in creating beautiful Flutter applications. Love building apps that solve real-world problems and make a positive impact.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle email action
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Email: arjun.sharma@gmail.com')),
                    );
                  },
                  icon: const Icon(Icons.email),
                  iconSize: 30,
                  color: Colors.blue,
                ),
                IconButton(
                  onPressed: () {
                    // Handle LinkedIn action
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('LinkedIn: linkedin.com/in/arjunsharma')),
                    );
                  },
                  icon: const Icon(Icons.business),
                  iconSize: 30,
                  color: Colors.blue,
                ),
                IconButton(
                  onPressed: () {
                    // Handle phone action
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Phone: +91 98765 43210')),
                    );
                  },
                  icon: const Icon(Icons.phone),
                  iconSize: 30,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.location_on, color: Colors.blue),
              title: const Text('Location'),
              subtitle: const Text('Bangalore, Karnataka, India'),
              dense: true,
            ),
            ListTile(
              leading: const Icon(Icons.work, color: Colors.blue),
              title: const Text('Experience'),
              subtitle: const Text('3+ years in Flutter Development'),
              dense: true,
            ),
            ListTile(
              leading: const Icon(Icons.school, color: Colors.blue),
              title: const Text('Education'),
              subtitle: const Text('B.Tech CSE, IIT Bangalore'),
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}