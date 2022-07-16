import 'package:flutter/material.dart';
import 'package:tekken_side_step/classes/character_info.dart';
import 'package:tekken_side_step/pages/home.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

final  List<character_info> characters = [
    character_info(name: 'Alisa', ssDirection: 'SSL',
        imgLocation: 'alisapng.png', oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Asuka', ssDirection: 'SSL', imgLocation: 'asukapng.png',
        oneBreak: false, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Bob', ssDirection: 'SSR', imgLocation:
    'bobpng.png', oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Bryan', ssDirection: 'SSR', 
        imgLocation: 'bryanpng.png', oneBreak: false, twoBreak: false, 
        onePlusTwoBreak: true),
    character_info (name:'Claudio', ssDirection: 'SSL', imgLocation: ''
        'claudiopng.png'  
        ,oneBreak: false,
    twoBreak: false, onePlusTwoBreak: true ),
    character_info(name: 'Devil Jin', ssDirection: 'SSL', imgLocation: 
    'devil-jinpng.png',
        oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Dragunov', ssDirection: 'SSR', imgLocation: 'dragunovpng.png',
        oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Eddy', ssDirection: 'SSR', imgLocation: 'eddypng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Feng', ssDirection: 'SSL', imgLocation: 'fengpng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Gigas', ssDirection: 'SSL', imgLocation: 'gigaspng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Heihachi', ssDirection: 'SSL', imgLocation:
        'heihachipng.png', oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Hwoarang', ssDirection: 'Chest',
        imgLocation: 'hwoarangpng.png', oneBreak: true, twoBreak: true,
        onePlusTwoBreak: true),
    character_info(name: 'Jack-7', ssDirection: 'SSL',
        imgLocation: 'jack-7png.png', oneBreak: true, twoBreak: true,
        onePlusTwoBreak: true),
    character_info(name: 'Jin', ssDirection: 'SSR', imgLocation: 'jinpng.png',
        oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Josie', ssDirection: 'SSL', imgLocation: 'josiepng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Katarina', ssDirection: 'SSR', imgLocation:
    'katarinapng.png', oneBreak: false, twoBreak: false, onePlusTwoBreak:
    true),
    character_info(name: 'Kazumi', ssDirection: 'SSR',
        imgLocation: 'kazumipng.png', oneBreak: false, twoBreak: false,
        onePlusTwoBreak: true),
    character_info(name: 'Kazuya', ssDirection: 'SSL', imgLocation:
        'kazuyapng.png', oneBreak: false, twoBreak: false, onePlusTwoBreak:
    true),
    character_info(name: 'King', ssDirection: 'SSR', imgLocation: 'kingpng.png',
        oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Kuma', ssDirection: 'SSR', imgLocation: 'kumapng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Lars', ssDirection: 'SSR', imgLocation: 'larspng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Law', ssDirection: 'SSR', imgLocation: 'lawpng.png',
        oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Lee', ssDirection: 'SSL', imgLocation: 'leepng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Leo', ssDirection: 'SSR', imgLocation: 'leopng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Lili', ssDirection: 'SSL', imgLocation: 'lilipng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Lucky Chloe', ssDirection: 'SSL', imgLocation:
    'lucky-chloepng.png', oneBreak: false, twoBreak: false,
        onePlusTwoBreak: true),
    character_info(name: 'Master Raven', ssDirection: 'SSL', imgLocation:
        'master-ravenpng.png', oneBreak: true, twoBreak: false,
        onePlusTwoBreak: true),
    character_info(name: 'Miguel', ssDirection: 'SSL', imgLocation:
    'miguelpng.png', oneBreak: false, twoBreak: true, onePlusTwoBreak:true),
    character_info(name: 'Nina', ssDirection: 'SSR', imgLocation: 'ninapng.png',
        oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
    character_info(name:'Panda', ssDirection: 'SSR', imgLocation: 'pandapng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Paul', ssDirection: 'SSR', imgLocation: 'paulpng.png',
        oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Shaheen', ssDirection: 'SSR',
        imgLocation: 'shaheenpng.png', oneBreak: false, twoBreak: false,
        onePlusTwoBreak: true),
    character_info(name: 'Steve', ssDirection: 'SSL', imgLocation: 'stevepng.png',
        oneBreak: false, twoBreak: true, onePlusTwoBreak: true),
    character_info(name: 'Xiaoyu', ssDirection: 'SSL',
        imgLocation: 'xiaoyupng.png', oneBreak: false, twoBreak: true,
        onePlusTwoBreak: true),
    character_info(name: 'Yoshimitsu', ssDirection: 'SSL', imgLocation:
        'yoshimitsupng.png', oneBreak: false, twoBreak: false,
        onePlusTwoBreak: true),
    character_info(name: 'Akuma', ssDirection: 'SSL',
        imgLocation: 'akumapng.png', oneBreak: false, twoBreak: false,
        onePlusTwoBreak: false),
    character_info(name: 'Eliza', ssDirection: 'SSL', imgLocation: 'elizapng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Geese', ssDirection: 'SSL', imgLocation: 'geesepng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Noctis', ssDirection: 'SSR', imgLocation: 'noctispn'
        'g.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
  character_info(name: 'Anna', ssDirection: 'SSR', imgLocation: 'annapng.png',
  oneBreak: false, twoBreak: true, onePlusTwoBreak: true),
  character_info(name: 'Lei', ssDirection: 'SSR', imgLocation: 'leipng.png',
  oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
  character_info(name: 'Marduk', ssDirection: 'SSL', imgLocation: 'mardukpng.png',
  oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
  character_info(name: 'Armor King', ssDirection: 'SSR', imgLocation:
  'armor-kingpng.png', oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
  character_info(name: 'Julia', ssDirection: 'SSL', imgLocation: 'juliapng.png',
  oneBreak: true, twoBreak: true, onePlusTwoBreak: true),
  character_info(name: 'Negan', ssDirection: 'SSR', imgLocation: 'neganpng.png',
  oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
  character_info(name: 'Zafina', ssDirection: 'SSL', imgLocation: 'zafinapng.png',
      oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
  character_info(name: 'Ganryu', ssDirection: 'SSR', imgLocation: 'ganryupng.png',
      oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
  character_info(name: 'Leroy', ssDirection: 'SSL', imgLocation: 'leroypng.png',
      oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
  character_info(name: 'Fahkumram', ssDirection: 'SSL', imgLocation: 'fahkumrampng.png',
      oneBreak: false, twoBreak: false, onePlusTwoBreak: true),
   character_info(name: 'Kunimitsu', ssDirection: 'SSR', imgLocation:
   'kunimitsu-2png.png', oneBreak: true, twoBreak: false, onePlusTwoBreak: true),
    character_info(name: 'Lidia', ssDirection: 'SSL', imgLocation: 'lidiapng.png',
        oneBreak: false, twoBreak: false, onePlusTwoBreak: true)

  ];
  late List<character_info> savedCharacter = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
     drawer:  Drawer(
       backgroundColor: Colors.red,
       child: ListTile(
         title: const Text(''
             'Saved Characters',
             style: TextStyle(
              color: Colors.white,
               fontSize: 20.0,
               fontFamily: 'Roboto',


         )
         ),
           onTap: () {
             Navigator.pushNamed(context, '/save', arguments: savedCharacter);
           }
       ),
     ),
     body: Padding(
       padding: const EdgeInsets.fromLTRB(10.0, 10.0,0,0 ),
       child: ListView.separated(
           itemCount: characters.length,
           itemBuilder: (context, index) {
             final alreadySaved = savedCharacter.contains(characters[index]);
             return ListTile(
               leading:  CircleAvatar(
                 backgroundImage: AssetImage('assets/${characters[index].imgLocation}'),
                 backgroundColor: Colors.black,
                 radius: 20.0,


               ),
               title: Text(
                 characters[index].getName,
                 style: const TextStyle(
                     fontSize: 30.0,
                     color : Colors.white
                 ),
               ),
               subtitle: Text(

                 characters[index].ssDirection,
                 style:  TextStyle(
                   fontSize: 25.0,
                   color: characters[index].ssDirection == 'SSL' ? Colors.blue : Colors.green,
                 ),
               ),
               trailing:  IconButton(
                 icon: Icon(alreadySaved ?  Icons.favorite : Icons.favorite_border),
                 color: alreadySaved ? Colors.red : Colors.white,
                 onPressed: () {
                   setState(() {
                     if(alreadySaved) {
                       savedCharacter.remove(characters[index]);
                     } else {
                       savedCharacter.add(characters[index]);
                     }
                   });


                 },
               ),
               onTap: () {
                 Navigator.pushNamed(context, '/character_specific', arguments: {
                   'name': characters[index].name,
                   'ssDirection': characters[index].ssDirection,
                   'imgLocation' : characters[index].imgLocation,
                   'oneBreak' : characters[index].oneBreak,
                   'twoBreak' : characters[index].twoBreak,
                   'onePlusTwoBreak' : characters[index].onePlusTwoBreak,
                 });
               },
             );


           }, separatorBuilder: (BuildContext context, int index) => const Divider(
         color: Colors.white,
       )),
     )
    );
  }


    }



