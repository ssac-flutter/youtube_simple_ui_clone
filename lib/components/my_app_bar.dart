import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String appName = 'YouTube';

  final List<Icon> icons = const [
    Icon(Icons.ondemand_video),
    Icon(Icons.search),
    Icon(Icons.menu)
  ];

  final Function? onTap;

  const MyAppBar({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      titleSpacing: 0.0,
      title: GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/logos/youtube.png',
                width: 32.0,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              appName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: icons[0]),
        IconButton(onPressed: () {}, icon: icons[1]),
        IconButton(onPressed: () {}, icon: icons[2]),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
