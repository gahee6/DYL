import 'package:flutter/material.dart';

import 'note.dart';

class NoteListPage extends StatefulWidget {

  @override
  State createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Do You Like'),
      ),
      body: GridView(
        children: _buildCards(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      ),
    );
  }

  List<Widget> _buildCards() {
    List<Note> notes = [
      Note(
        '''
박선우
박지수
임가희
''',
        title: 'My Team',
      ),
      Note('''
고상범
양이찬
      '''
          ,
          title: '컴공들'),
      Note('''
고상범
양이찬
      ''',
          title: '2팀'),
      Note(
        '''
가나다
라마바
사아자
  ''',
        title: '3팀',
      ),
      Note(
        '''
차카타
파하
ㄱㄴㄷ
  ''',
        title: '4팀',
      ),
      Note('''
차카타
파하
ㄱㄴㄷ
  ''',
          title: '5팀'),
      Note('''
차카타
파하
ㄱㄴㄷ
  ''',
          title: '6팀'),

      Note('''
서누
지수
가히
  ''',
          title: '7팀')
    ];
    ;

    return notes.map((note) => _buildcard(note)).toList();
  }

  Widget _buildcard(Note note) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(

          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(note.title.isEmpty ? '{제목 없음}' : note.title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 16.0,),
            Expanded(child: Text(note.body, overflow: TextOverflow.fade)),
          ],
        ),
      ),
    );
  }
}