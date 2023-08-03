import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onPageChanged;

  NavBar({
    required this.pageIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              onPageChanged(0);
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.trending_up,
                    color: Colors.black87,
                    size: 33,
                  )
                : const Icon(
                    Icons.trending_up,
                    color: Colors.black87,
                    size: 33,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              onPageChanged(1);
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.manage_search,
                    color: Colors.black87,
                    size: 33,
                  )
                : const Icon(
                    Icons.manage_search,
                    color: Colors.black87,
                    size: 33,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              onPageChanged(2);
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.notifications_none,
                    color: Colors.black87,
                    size: 33,
                  )
                : const Icon(
                    Icons.notifications_none,
                    color: Colors.black87,
                    size: 33,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              onPageChanged(3);
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.black87,
                    size: 33,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.black87,
                    size: 33,
                  ),
          ),
        ],
      ),
    );
  }
}
