import 'package:flutter/material.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'labour.dart';
import 'package:supercharged/supercharged.dart';
import 'labour_data.dart';

class LabourList extends StatefulWidget {
  const LabourList({super.key});

  @override
  State<LabourList> createState() => _LabourListState();
}

class _LabourListState extends State<LabourList> {
  int selected = -1;
  List<Map<String, dynamic>> labourList = List.from(labour);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  leading: IconButton(
    color: Colors.black,
    onPressed: () {
      Navigator.pushNamed(context, 'contact');
    },
    icon: const CircleAvatar(
      backgroundImage: AssetImage('assets/images/logo1.jpeg'),
      radius: 30.0,
    ),
  ),
  title: Row(
    children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      const SizedBox(width: 10),
      IconButton(
        icon: const Icon(Icons.person),
        onPressed: () {
          // Add your onPressed code here
        },
      ),
    ],
  ),
),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Center(
                child: Text(
  'Labours in Your Area',
  style: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.6,
    wordSpacing: 1,
    color: Color(0xff707070),
    decoration: TextDecoration.underline,
    decorationThickness: 2,
  ),
),
),
SizedBox(height: 10,),
Container(
  width: MediaQuery.of(context).size.width,
  child: Divider(
    height: 20,
    thickness: 3,
    color: Colors.black,
  ),
),

              const Padding(padding: EdgeInsets.only(top: 16)),
              
              const Padding(padding: EdgeInsets.only(top: 16)),
              const Padding(padding: EdgeInsets.only(top: 16)),
              ...labourList.map(
                (e) => TeamMemberPanel(data: e, i: labour.indexOf(e)),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamMemberPanel extends StatefulWidget {
  const TeamMemberPanel({
    Key? key,
    required this.data,
    required this.i,
  });

  final Map<String, dynamic> data;
  final int i;

  @override
  State<TeamMemberPanel> createState() => _TeamMemberPanelState();
}

class _TeamMemberPanelState extends State<TeamMemberPanel> {
  @override
  Widget build(BuildContext context,) {
    final size = MediaQuery.of(context).size;
    return 
       Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                AnimatedContainer(
                  duration: 500.milliseconds,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                       color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.grey)),
                  child: GestureDetector(
                    onTap: () {
                      
                    },
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(widget.data['image']),
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 24)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        widget.data['name'],
                        style: const TextStyle(
                            color: Color(0xff4285F4), fontWeight: FontWeight.bold,
                            fontSize: 22
                             ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 8)),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: size.width / 2.0,
                        child: Text(
                          widget.data['age'],
                          style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff707070),
                              ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 16)),

                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: size.width / 2.0,
                        child: Text(
                          widget.data['area'],
                          style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff707070),
                              ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 16)),

                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: size.width / 2.0,
                        child: Text(
                          widget.data['work'],
                          style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff707070),
                              ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 16)),

                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: size.width / 2.0,
                        child: Text(
                          widget.data['phone'],
                          style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff707070),
                              ),
                        ),
                      ),
                    ),
                    
                    const Padding(padding: EdgeInsets.only(top: 16)),
                    
                  ],
                )
              ],
            ),
          
        ),
      );
  }
}