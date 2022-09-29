import 'package:flutter/material.dart';

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item $index'),
          leading: const Icon(Icons.people),
          trailing: TextButton(
            onPressed: () {},
            child: const Icon(Icons.energy_savings_leaf_outlined),
          ),
        );
      },
    );
  }
}
