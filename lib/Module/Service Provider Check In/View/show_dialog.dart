import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  List<Map> societies = [

        {
          "id": 1,
          "name": "Society A House 11",
          "isChecked": false,
        },
        {
          "id": 2,
          "name": "Society B House 12",
          "isChecked": false,
        },
    {
      "id": 3,
      "name": "Society B House 13",
      "isChecked": false,
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
                children: societies
                    .map((e) => CheckboxListTile(
                        value: e["isChecked"],
                        title: Text(e['name']),
                        onChanged: (newValue) {
                          setState(() {
                            e["isChecked"] = newValue;
                            // print(widget.li[widget. index]["isChecked"]);
                            // print(widget.li[widget. index]["name"]);
                          });
                        }))
                    .toList())
          ],
        ),
      ),
    );
  }
}
