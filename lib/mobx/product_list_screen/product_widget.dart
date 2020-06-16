import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: true,
          onChanged: (bool value) {},
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        SizedBox(width: 5),
        Text('Apple iPhone X Pro'),
        SizedBox(width: 5),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: Icon(
                Icons.remove_circle,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
