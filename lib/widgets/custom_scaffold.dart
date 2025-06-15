import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../style/color.dart' as app_color;

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final String? title;
  final List<Widget>? actions;

  const CustomScaffold({
    super.key,
    required this.body,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title != null
          ? AppBar(
              title: Text(title!),
              backgroundColor: app_color.primaryColor,
              actions: actions,
            )
          : null,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [app_color.primaryColor, app_color.secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: body,
        ),
      ),
    );
  }
}