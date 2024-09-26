import 'package:flutter/material.dart';

class LargeWidget extends StatelessWidget {
  const LargeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue.withOpacity(0.2),
      ),
      child: Column(
        children: [
          _topRow(),
          _bottomRow(),
        ],
      ),
    );
  }

  //* Top Row ________________________________________________________________

  Widget _topRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _topText(),
        _avatar(),
      ],
    );
  }

  Widget _avatar() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        backgroundColor: Colors.grey.withOpacity(0.4),
        radius: 25,
      ),
    );
  }

  Widget _topText() {
    return const Text(
      'Ali',
      style: TextStyle(fontSize: 24),
    );
  }

  //* Bottom Row _____________________________________________________________

  Widget _bottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _cancleButton(),
        _bottomText(),
      ],
    );
  }

  Widget _bottomText() {
    return const Text(
      'Hello World',
      style: TextStyle(fontSize: 16),
    );
  }

  Widget _cancleButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              size: 26,
              Icons.cancel_outlined,
              color: Colors.white,
            )),
      ),
    );
  }
}
