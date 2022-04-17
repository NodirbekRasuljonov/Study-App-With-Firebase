import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:studyapp/core/constants/text_const.dart';
import 'package:on_click/on_click.dart';

class InterestsPage extends StatefulWidget {
  InterestsPage({Key? key}) : super(key: key);

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  bool math=false;

  bool economy = false;

  bool english = false;

  bool bilogy = false;

  bool geography = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text(
              TextConst.skip,
              style: TextStyle(
                  color: ColorConst.text2Color, fontSize: SizeConst.medium),
            ).onClick(
              () {
                Navigator.pushNamed(context, '/signin');
              },
            ),
          )
        ],
        elevation: 0.0,
        title: Image.asset('assets/images/slider2.png'),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/title.png'),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            child: ListTile(
              trailing: Checkbox(
                shape: const CircleBorder(),
                value: math,
                onChanged: (v) {
                  v == math;
                  setState(() {
                    
                  });
                },
              ),
              leading: Image.asset('assets/images/math.png'),
              title: const Text('Mathematics'),
              subtitle: const Text(
                'Geomatry,Algorhitms',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            child: ListTile(
              trailing: Checkbox(
                shape: const CircleBorder(),
                value: math,
                onChanged: (v) {
                  v == economy;
                  setState(() {
                    
                  });
                },
              ),
              leading: Image.asset('assets/images/economy.png'),
              title: const Text('Economy'),
              subtitle: const Text(
                'Stock,Property,News',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            child: ListTile(
              trailing: Checkbox(
                shape: const CircleBorder(),
                value: math,
                onChanged: (v) {
                  v == english;
                  setState(() {
                    
                  });
                },
              ),
              leading: Image.asset('assets/images/english.png'),
              title: const Text('English'),
              subtitle: const Text(
                'Stock,Property,News',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            child: ListTile(
              trailing: Checkbox(
                shape: const CircleBorder(),
                value: math,
                onChanged: (v) {
                  v == bilogy;
                  setState(() {
                    
                  });
                },
              ),
              leading: Image.asset('assets/images/biology.png'),
              title: const Text('Biology'),
              subtitle: const Text(
                'Stock,Property,News',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            child: ListTile(
              trailing: Checkbox(
                shape: const CircleBorder(),
                value: math,
                onChanged: (v) {
                  v == geography;
                  setState(() {
                    
                  });
                },
              ),
              leading: Image.asset('assets/images/geography.png'),
              title: const Text('Geography'),
              subtitle: const Text(
                'Stock,Property,News',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 40.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.height*0.427, MediaQuery.of(context).size.height*0.07)
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/signin');
              }, child: const Text('Continue'),),
          ),
          
        ],
      ),
    );
  }
}
