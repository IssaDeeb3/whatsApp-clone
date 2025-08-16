import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Status', style: Theme.of(context).textTheme.labelLarge),
        ),
        ListTile(
          leading: Stack(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 2,
                    ),
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 14),
                ),
              ),
            ],
          ),
          title: const Text('My Status'),
          subtitle: const Text('Tap to add status update'),
          onTap: () {},
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Recent updates',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/men/1.jpg',
              ),
            ),
          ),
          title: const Text('John Doe'),
          subtitle: const Text('Today, 10:30 AM'),
          onTap: () {},
        ),
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/women/1.jpg',
              ),
            ),
          ),
          title: const Text('Jane Smith'),
          subtitle: const Text('Today, 9:15 AM'),
          onTap: () {},
        ),
      ],
    );
  }
}
