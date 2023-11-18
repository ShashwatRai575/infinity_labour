import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/Screenshot (97).png'),
            ),
            Row(
              children: <Widget>[
                GestureDetector(
  onTap: () {
    // Add your function here
    Navigator.pushNamed(context, 'login');
  },
  child: Container(
    margin: EdgeInsets.all(10),
    width: 100,
    height: 120,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 1.0),
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: <Widget>[
        Image.asset(
          'assets/images/Screenshot (95).png',
          fit: BoxFit.cover,
        ),
        Text(
          'Contractor',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),

                GestureDetector(
  onTap: () {
    // Add your function here
    Navigator.pushNamed(context, 'labourlogin');
  },
  child: Container(
    margin: EdgeInsets.all(10),
    width: 100,
    height: 120,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 1.0),
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: <Widget>[
        Image.asset(
          'assets/images/Screenshot (93).png',
          fit: BoxFit.cover,
        ),
        Text(
          'Labour',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),

                GestureDetector(
  onTap: () {
    // Add your function here
    Navigator.pushNamed(context, 'login');
  },
  child: Container(
    margin: EdgeInsets.all(10),
    width: 100,
    height: 120,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 1.0),
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: <Widget>[
        Image.asset(
          'assets/images/phone1.jpeg',
          fit: BoxFit.cover,
        ),
        Text(
          'Personal',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
)

              ],
            ),
            Container(
              child: Image.asset('assets/images/Screenshot (99).png'),
            )
          ],
        ),
      ),
    );
  }
}
