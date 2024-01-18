import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    decoration: BoxDecoration(
      color: Colors.lightBlue, // Light blue color for the TextField
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        bottomLeft: Radius.circular(30.0),
      ),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Enter your search query',
        border: InputBorder.none,
      ),
      style: TextStyle(color: Colors.amberAccent),
    ),
  ),
),

SizedBox(
  height: 30,
),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.brown,
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle search button press
                        },
                        child: Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

                SizedBox(
              height: 30,
                 ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0, // Adjust spacing as needed
                mainAxisSpacing: 16.0, // Adjust spacing as needed
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text(
                      'Container ${index + 1}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
