import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

/// -- Most of the Styling is already defined in the Utils -> Themes -> ChipTheme.dart
class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget({
    Key? key,
    required this.text,
    required this.selected,
    this.onSelected,
  }) : super(key: key);

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AppHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context)
          .copyWith(canvasColor: Colors.transparent), //backgroundColor
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? Colors.white : null),
        avatar: isColor
            ? CircularContainer(
                width: 50,
                height: 50,
                backgroundColor: AppHelperFunctions.getColor(text)!,
              )
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(8) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? AppHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
