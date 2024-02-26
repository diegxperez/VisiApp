import 'package:flutter/material.dart';

class CustomListTileProfile extends StatelessWidget {
  final title;
  final iconLeading;
  const CustomListTileProfile({
    super.key,
    this.title,
    this.iconLeading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconLeading),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      contentPadding: EdgeInsets.zero,
    );
  }
}
