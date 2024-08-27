import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the note details page
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 26)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(note.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.4), fontSize: 18)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.data,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
