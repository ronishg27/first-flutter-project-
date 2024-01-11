import 'package:flutter/material.dart';
// import 'package:side_navigation/side_navigation.dart';

class SampleProject extends StatelessWidget {
  const SampleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Samriddhi CSIT."),
        // centerTitle: true,

        actions: const [
          Icon(Icons.logout),
          SizedBox(
            width: 10.5,
          ),
          Icon(Icons.add_comment),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1703081397398-6156621d25ce?q=80&w=1891&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            scale: 7,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Samriddhi College.",
            style: TextStyle(fontSize: 24),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 125, right: 125),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: onBtnPress,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(),
                      Icon(Icons.add_comment),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Click here!"),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

void onBtnPress() {
  print('Button clicked');
}
