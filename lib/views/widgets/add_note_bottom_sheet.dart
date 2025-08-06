import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 16,
      ),
      child: Column(
        children: [
          CustomTextField(
            paddingVertical: 24,
            title: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            paddingVertical: 58,
            title: 'Content',
          ),
          Spacer(
            flex: 1,
          ),

        ],
      ),
    );
  }
}
