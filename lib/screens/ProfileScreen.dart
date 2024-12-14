import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          SizedBox(height: screenWidth * 0.1), // Responsive spacing
          CircleAvatar(
            radius: screenWidth * 0.15, // Circle size based on screen width
            backgroundColor: Colors.grey[300],
            child: const Icon(Icons.person, size: 70, color: Colors.black),
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                const Text(
                  'Shailshree Shah',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  '@chillshree',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // List of settings
          _buildListItem(
            context,
            icon: Icons.person_outline,
            title: 'Edit Profile',
            onTap: () {},
          ),
          _buildListItem(
            context,
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          _buildListItem(
            context,
            icon: Icons.language,
            title: 'Languages',
            onTap: () {},
          ),
          _buildListItem(
            context,
            icon: Icons.description_outlined,
            title: 'Terms of Service',
            onTap: () {},
          ),
          _buildListItem(
            context,
            icon: Icons.lock_outline,
            title: 'Privacy Policy',
            onTap: () {},
          ),
          _buildListItem(
            context,
            icon: Icons.logout_outlined,
            title: 'Log out',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context,
      {required IconData icon,
      required String title,
      Widget? trailing,
      VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
