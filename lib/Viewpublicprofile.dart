import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget content;
  final VoidCallback? onEdit;

  const CustomBox({
    required this.title,
    required this.icon,
    required this.content,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onEdit,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(icon),
              ],
            ),
            SizedBox(height: 16),
            content,
          ],
        ),
      ),
    );
  }
}

class Viewpublicprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBox(
                title: 'About Me',
                icon: Icons.edit,
                content: Text(
                  'The text will be shown here, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                ),
                onEdit: () {
                  // Handle edit action for About Me section
                  print('Edit About Me');
                },
              ),
              SizedBox(height: 15),
              CustomBox(
                title: 'Candidate Information(Verified)',
                icon: Icons.email,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Text(
                    //'Email Verified: ',
                    // style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    //),
                    //),
                    //Text('Yes'),
                    Text(
                      'Gender: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Male'),
                    Text(
                      'Age: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('30'),
                    Text(
                      'Experience: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('5 years'),
                    Text(
                      'Career: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Software Engineer'),
                    Text(
                      'Current Salary: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('\$70,000'),
                    Text(
                      'Expected Salary: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('\$100,000'),
                  ],
                ),
                onEdit: () {
                  // Handle edit action for Candidate Information section
                  print('Edit Candidate Information');
                },
              ),
              SizedBox(height: 15),
              CustomBox(
                title: 'Skills',
                icon: Icons.edit,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Adob'),
                    Text('.Net'),
                    Text('JavaScript'),
                  ],
                ),
                onEdit: () {
                  // Handle edit action for Skills section
                  print('Edit Skills');
                },
              ),
              SizedBox(height: 15),
              CustomBox(
                title: 'Experience',
                icon: Icons.edit,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Company 1'),
                    Text('Company 2'),
                    Text('Company 3'),
                  ],
                ),
                onEdit: () {
                  // Handle edit action for Experience section
                  print('Edit Experience');
                },
              ),
              SizedBox(height: 15),
              CustomBox(
                title: 'Education',
                icon: Icons.edit,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Masters'),
                    Text('Graduation'),
                    Text('Inter'),
                  ],
                ),
                onEdit: () {
                  // Handle edit action for Education section
                  print('Edit Education');
                },
              ),
              SizedBox(height: 15),
              CustomBox(
                title: 'Portfolio',
                icon: Icons.edit,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Project 1'),
                    Text('Project 2'),
                    Text('Project 3'),
                  ],
                ),
                onEdit: () {
                  // Handle edit action for Portfolio section
                  print('Edit Portfolio');
                },
              ),
              SizedBox(height: 15),
              CustomBox(
                title: 'Language',
                icon: Icons.edit,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('English'),
                    Text('Urdu'),
                    Text('Arabic'),
                  ],
                ),
                onEdit: () {
                  // Handle edit action for Language sectionwq
                  print('Edit Language');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
