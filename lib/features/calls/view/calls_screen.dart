import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.green[100],
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.link, color: Colors.green),
          ),
          title: const Text('Create call link'),
          subtitle: const Text('Share a link for your WhatsApp call'),
          onTap: () {},
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Recent',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
          ),
          title: const Text('John Doe'),
          subtitle: Row(
            children: [
              const Icon(Icons.call_received, size: 16, color: Colors.green),
              const SizedBox(width: 4),
              Text(
                'Today, 10:30 AM',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
          trailing: const Icon(Icons.call, color: Colors.green),
          onTap: () {},
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/1.jpg'),
          ),
          title: const Text('Jane Smith'),
          subtitle: Row(
            children: [
              const Icon(Icons.call_made, size: 16, color: Colors.red),
              const SizedBox(width: 4),
              Text(
                'Yesterday, 8:15 PM',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
          trailing: const Icon(Icons.videocam, color: Colors.green),
          onTap: () {},
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/2.jpg'),
          ),
          title: const Text('Mike Johnson'),
          subtitle: Row(
            children: [
              const Icon(Icons.call_received, size: 16, color: Colors.green),
              const SizedBox(width: 4),
              Text(
                'Yesterday, 3:45 PM',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
          trailing: const Icon(Icons.call, color: Colors.green),
          onTap: () {},
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/2.jpg'),
          ),
          title: const Text('Sarah Williams'),
          subtitle: Row(
            children: [
              const Icon(Icons.call_made, size: 16, color: Colors.green),
              const SizedBox(width: 4),
              Text(
                'Monday, 5:20 PM',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
          trailing: const Icon(Icons.videocam, color: Colors.green),
          onTap: () {},
        ),
      ],
    );
  }
}
