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
      appBar: AppBar(
        title: const Text('Profile Card'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: ProfileCard(),
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
              'John Doe',
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
              'Passionate mobile developer with 3+ years of experience in creating beautiful and functional Flutter applications. Love clean code and great user experiences.',
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
                      const SnackBar(content: Text('Email: john.doe@example.com')),
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
                      const SnackBar(content: Text('LinkedIn: linkedin.com/in/johndoe')),
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
                      const SnackBar(content: Text('Phone: +1 (555) 123-4567')),
                    );
                  },
                  icon: const Icon(Icons.phone),
                  iconSize: 30,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}