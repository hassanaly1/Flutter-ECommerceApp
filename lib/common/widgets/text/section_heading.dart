import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  const SectionHeading(
      {super.key,
      this.textColor,
      required this.showActionButton,
      required this.title,
      this.buttonTitle = 'View All',
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis),
      if (showActionButton)
        TextButton(onPressed: onPressed, child: Text(buttonTitle))
    ]);
  }
}
