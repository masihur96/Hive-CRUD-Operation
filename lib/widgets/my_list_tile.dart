import 'package:flutter/material.dart';
import 'package:hive_practice/models/task_model.dart';

class MyListTile extends StatefulWidget {
  final Task? task;
  final int? index;
  const MyListTile(this.task, this.index, {Key? key}) : super(key: key);

  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      width: double.infinity,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.blue.shade50, borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                widget.task!.title!,
                style: TextStyle(fontSize: 18.6, fontWeight: FontWeight.bold),
              )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {
                    //Delete
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ))
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Text(
            widget.task!.note!,
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
