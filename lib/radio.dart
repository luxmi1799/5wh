import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final Widget? title;
  final Widget? trailing;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    required this.trailing,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
         // mainAxisSize: MainAxisSize.min,
          children: [
            _customRadioButton,
            SizedBox(width: 12),
            if (title != null) title,
            Spacer(),
            Icon(Icons.edit_note,color: Color(0xff21AE2F),),
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Color(0xff0923AA) : Colors.grey[300]!,
          border: Border.all(width: 2, color: Colors.grey)
      ),
    );
  }
}