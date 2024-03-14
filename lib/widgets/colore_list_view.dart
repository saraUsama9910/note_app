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
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currntIndex = 0;
  List<Color> colors = [
    const Color.fromARGB(255, 211, 255, 129),
    const Color.fromARGB(255, 169, 255, 129),
    const Color.fromARGB(255, 129, 255, 194),
    const Color.fromARGB(255, 129, 251, 255),
    const Color.fromARGB(255, 129, 240, 255),
    const Color.fromARGB(255, 129, 230, 255),
    const Color.fromARGB(255, 129, 215, 255),
    const Color.fromARGB(255, 129, 184, 255),
    const Color.fromARGB(255, 129, 158, 255),
    const Color.fromARGB(255, 129, 131, 255)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currntIndex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    color: colors[index],
                    isActive: currntIndex == index,
                  )),
            );
          }),
    );
  }
}
