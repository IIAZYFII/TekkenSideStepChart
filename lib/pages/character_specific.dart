import 'package:flutter/material.dart';

class CharacterSpecific extends StatefulWidget {
  const CharacterSpecific({Key? key}) : super(key: key);

  @override
  State<CharacterSpecific> createState() => _CharacterSpecificState();
}

class _CharacterSpecificState extends State<CharacterSpecific> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(data['name']),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/${data['imgLocation']}'),
              backgroundColor: Colors.black12,
              radius: 50.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          child: Text(
            data['ssDirection'],
            style:  TextStyle(
                color: data['ssDirection'] == 'SSL' ? Colors.blue : Colors.green,
                fontSize: 40.0
            ),
          ),
        ),
        Row(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 50.0, 0, 0),
              child: Text('Throws',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    decoration: TextDecoration.underline,
                  )),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              if (data['oneBreak'] &&
                  data['twoBreak'] &&
                  data['onePlusTwoBreak']) ...[
                const Text('1, 2, 1+2',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ] else if (data['oneBreak'] && data['twoBreak']) ...[
                const Text('1, 2',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ] else if (data['oneBreak'] && data['onePlusTwoBreak']) ...[
                const Text('1, 1+2',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ] else if (data['twoBreak'] && data['onePlusTwoBreak']) ...[
                const Text('2, 1+2',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ] else if (data['oneBreak']) ...[
                const Text('1',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ] else if (data['twoBreak']) ...[
                const Text('2',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ] else if (data['onePlusTwoBreak']) ...[
                const Text('1+2',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ] else ...[
                const Text('N/A',
                    style: TextStyle(color: Colors.white, fontSize: 20.0))
              ]
            ],
          ),
        ),
        Row(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 50.0, 0, 0),
              child: Text(
                  'Side Step Details',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                decoration: TextDecoration.underline,
              )),
            )
          ],
        ),
        Row(
    children: <Widget>[
      if (data['name'] == 'Lilli' || data['name'] == 'Kunimitsu'
          || data['name'] == 'Zafina' )...[
            const Text('- Generally can be sidestep in either direction as character moves'
                '\n  are usually very linear.',
            style: TextStyle(
              color: Colors.white,
            ),)
      ] else if(data['name'] == 'Alisa')...[
        const Text('- Generally can be sidestep in either direction as character moves'
            '\n  are usually very linear.'
            '\n-  SWL Chainsaws.',
          style: TextStyle(
            color: Colors.white,
          ),),
      ] else if (data['name'] == 'Hwoarang')...[
        const Text('- There is no point looking for the chest to side step Hwoarang'
            '\n  just side step right instead.',
          style: TextStyle(
            color: Colors.white,
          ),)
      ] else if (data['name'] == 'Steve' || data['name'] == 'Ganryu' || data['name'] =='Akuma'
                 || data['name'] == 'Geese')...[
        const Text('- Generally dont step these characters as they have good neutral '
            '\n  tracking moves.',
          style: TextStyle(
            color: Colors.white,
          ),)
      ]
    ]

        )
      ]),
    );
  }
}
