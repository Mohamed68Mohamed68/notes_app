import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currantIndex = 0;
  List<Color> colors = const [
    Color(0xffF18F01),
    Color(0xff048BA8),
    Color(0xff4FA77B),
    Color(0xff99C24D),
    Color(0xff2A9992),
    Color(0xffFFBF00),
    Color(0xff8A2BE2),
    Color(0xff800020),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currantIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currantIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
