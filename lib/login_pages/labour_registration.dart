import 'package:flutter/material.dart';
class LabourLogin extends StatefulWidget {
  const LabourLogin({super.key});

  @override
  State<LabourLogin> createState() => _LabourLoginState();
}

class _LabourLoginState extends State<LabourLogin> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  bool _isValid = false;

  void _checkValidity() {
    setState(() {
      _isValid = _nameController.text.isNotEmpty &&
          _phoneController.text.isNotEmpty;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //Container(),
            Container(
                padding: const EdgeInsets.only(left: 10, top: 60),
                child: Image.asset('assets/images/labourlogin.png')),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            controller: _nameController,
                            style: const TextStyle(color: Colors.black),
                            onChanged: (_) => _checkValidity(),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "NAME",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon:
                                  const Icon(Icons.person), // Add icon before text
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextField(
                            controller: _phoneController,
                            style: const TextStyle(color: Colors.black),
                            obscureText: true,
                            onChanged: (_) => _checkValidity(),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "PHONE",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              prefixIcon:
                                  const Icon(Icons.phone), // Add icon before text
                            ),
                          ),

                          const SizedBox(
                            height: 25,
                          ),
                          const Divider(
                            height: 10,
                            thickness: 1.5,
                            color: Colors.purple,
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[900],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                //Navigator.pushNamed(context, 'labourscreen');
                              },
                              style: const ButtonStyle(),
                              child: const Text(
                                'Get OTP',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextField(
                           controller: _nameController,
                            style: const TextStyle(color: Colors.black),
                            obscureText: true,
                            onChanged: (_) => _checkValidity(),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Enter OTP",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[900],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'labourscreen');
                              },
                              style: const ButtonStyle(),
                              child: const Text(
                                'Proceed',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height:10,
                          ),
                          
                          const SizedBox(
                            height:10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}