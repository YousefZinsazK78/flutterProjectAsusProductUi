import 'package:flutter/material.dart';

class AppBarChatScreen extends StatelessWidget {
  const AppBarChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 90,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const BackButton(),
          const SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue[900],
            radius: 30,
            child: const Text(
              'Asus',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Asus Official Store',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Text(
                'Active 5 hours ago',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
            tooltip: 'more options',
          ),
        ],
      ),
    );
  }
}
