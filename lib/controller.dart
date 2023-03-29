// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';

class ExpandableList extends StatefulWidget {
  List<String> listOfItems;
  bool show;

  ExpandableList({super.key, required this.listOfItems, required this.show});

  @override
  State<ExpandableList> createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...widget.listOfItems
              .take(widget.show ? widget.listOfItems.length : 0)
              .map(
                (step) => Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:
                    EdgeInsets.only(top: 4, right: 8),
                    child: Icon(Icons.double_arrow,
                        size: 20),
                  ),
                  Expanded(
                    child: Text(
                      step,
                      style: bodyStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (!widget.show)
            IconButton(
              onPressed: () {
                setState(() {
                  widget.show = true;
                });
              },
              icon: const Icon(Icons.add),
            ),
          if (widget.show)
            IconButton(
              onPressed: () {
                setState(() {
                  widget.show = false;
                });
              },
              icon: const Icon(Icons.remove),
            ),
        ],
      ),
    );
  }
}

