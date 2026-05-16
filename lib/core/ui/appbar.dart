import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBackButton;


  const CustomAppBar({
    super.key,
    this.title,
    this.showBackButton = false,

  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: title != null
          ? Text(
        title!,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      )
          : null,
      centerTitle: true,

      leading: showBackButton
          ? IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 22,
        ),
        onPressed: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
      )
          : null,

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}