import 'package:flutter/material.dart';
import 'package:tekken_side_step/classes/character_info.dart';
class LoadSavedCharacters extends StatefulWidget {
  const LoadSavedCharacters({Key? key}) : super(key: key);

  @override
  State<LoadSavedCharacters> createState() => _LoadSavedCharacters();
}

class _LoadSavedCharacters extends State<LoadSavedCharacters> {
  late List<character_info> savedCharacters;

  @override
  Widget build(BuildContext context) {
    savedCharacters = ModalRoute.of(context)!.settings.arguments as List<character_info>;
   return  Scaffold(
       backgroundColor: Colors.black12,
     appBar: AppBar(
       backgroundColor: Colors.red,
       title:  const Text('Saved Characters'),
       centerTitle: true,
     ),
     body: Center(
       child: ListView.separated(
            itemCount: savedCharacters.length,
           itemBuilder: (context, index) {
             return ListTile(
               leading:  CircleAvatar(
                 backgroundImage: AssetImage('assets/${savedCharacters[index].imgLocation}'),
                 backgroundColor: Colors.black,
                 radius: 20.0,


               ),
               title: Text(
                 savedCharacters[index].getName,
                 style: const TextStyle(
                     fontSize: 30.0,
                     color : Colors.white
                 ),
               ),
               subtitle: Text(
                 savedCharacters[index].ssDirection,
                 style: TextStyle(
                   fontSize: 25.0,
                   color: savedCharacters[index].ssDirection == 'SSL' ? Colors.blue : Colors.green,
                 ),
               ),
             );
           }, separatorBuilder: (BuildContext context, int index) => const Divider(
         color: Colors.white,
       )),
       ),
     );
  }

}
