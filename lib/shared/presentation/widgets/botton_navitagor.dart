import 'package:flutter/material.dart';

class BottonNavitagor extends StatelessWidget {
  const BottonNavitagor({super.key, required this.activeIndex});

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem(
            icon: Icons.home,
            label: 'Início',
            index: 0,
          ),
          _buildNavItem(
            icon: Icons.settings,
            label: 'Opções',
            index: 1,
          ),
          _buildNavItem(
            icon: Icons.info,
            label: 'Tutoriais',
            index: 2,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 4, bottom: 4, right: 24, left: 24),
            decoration: BoxDecoration(
              color: activeIndex == index ? Color(0xffc3e1e8) : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: activeIndex == index ? Color(0xff272727) : Color(0xff6f6f6f),
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: activeIndex == index ? Colors.black : Colors.grey,
              fontWeight: activeIndex == index ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
