import 'package:bikin_apl/botnav.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  'USER',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('12047099490'),
                trailing: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Colors.red,
                ),
              ),
              _buildSettingItem('Account Type', 'Full Service'),
              _buildSettingItem('Account Settings', null),
              _buildSettingItem('LinkAja Syariah', 'Not Active'),
              _buildSettingItem('Payment Method', null),
              _buildSettingItem('Email', 'user701237@gmail.com'),
              _buildSettingItem('Security Question', 'Set'),
              _buildSettingItem('PIN Settings', null),
              _buildSettingItem('Language', 'English'),
              _buildSettingItem('Terms of Service', null),
              _buildSettingItem('Privacy Policy', null),
              _buildSettingItem('Help Center', null),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(currentIndex: 4),
    );
  }

  Widget _buildSettingItem(String title, String? subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Add actions when a setting item is clicked
      },
    );
  }
}
