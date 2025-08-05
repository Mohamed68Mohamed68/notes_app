import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  int? chooseIndexColor(int num) {
    if (num < colorsList.length) {
      return num;
    } else {
      double doubleNumber = num / colorsList.length;
      int intgerNumber = doubleNumber.truncate();
      return num - (colorsList.length * intgerNumber);
    }
  }

  final colorsList = const [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(
            color: colorsList[chooseIndexColor(index)!],
          ),
        );
      },
    );
  }
}
