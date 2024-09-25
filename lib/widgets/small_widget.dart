import 'package:flutter/material.dart';

class SmallWidget extends StatelessWidget {
  const SmallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue.withOpacity(0.2),
      ),
      child: Row(
        children: [
          _cancleButton(),
          const Spacer(),
          _texts(),
          _avatar(),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.grey.withOpacity(0.4),
        radius: 25,
      ),
    );
  }

  Widget _cancleButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.9),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Icon(
              Icons.cancel_outlined,
              color: Colors.white,
            )),
      ),
    );
  }

  Widget _texts() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Ali',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Hello World',
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
