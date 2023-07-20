import 'package:flutter/material.dart';
import 'custom_widgets/button_design.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ManageResume extends StatefulWidget {
  @override
  _ManageResumeState createState() => _ManageResumeState();
}

class _ManageResumeState extends State<ManageResume> {
  String _uploadedResume = ''; // Assign initial value to _uploadedResume

  void _openAddCVDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add CV'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'CV Title'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Add logic to choose and upload the file
                  // Set the uploaded resume file path to _uploadedResume
                  setState(() {
                    _uploadedResume = 'example.pdf'; // Example file path
                  });
                  Navigator.pop(context);
                },
                child: Text('Choose File'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _openAddProjectDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Builder(
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Add Project'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Project Name'),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(labelText: 'Description'),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Project Added successfully!',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.black87,
                        textColor: Colors.white,
                      );
                      // Implement logic to add the project
                      Navigator.pop(context);
                    },
                    child: Text('Add Project'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _openAddEducationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Education'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Degree'),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(labelText: 'Year'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Education  Added successfully!',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black87,
                    textColor: Colors.white,
                  );
                  // Implement log
                  // Implement logic to add education
                  Navigator.pop(context);
                },
                child: Text('Add Education'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _openAddLanguageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Language'),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(labelText: 'Language Level'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Language Added successfully!',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black87,
                    textColor: Colors.white,
                  );
                  // Implement log
                  // Implemen
                  //t logic to add education
                  Navigator.pop(context);
                },
                child: Text('Add Language'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _openAddExperienceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Experience'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Company Name'),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(labelText: 'Experience Title'),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(labelText: 'Country'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'City'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Experience Start Date'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Experience End Date'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Experience Added successfully!',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black87,
                    textColor: Colors.white,
                  );
                  // Implement log
                  // Implement logic to add education
                  Navigator.pop(context);
                },
                //SizedBox(height: 10.0),
                child: Text('Add Experience'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _openAddSkillDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Skills'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Skill'),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(labelText: 'Experience level'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Skill Added successfully!',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black87,
                    textColor: Colors.white,
                  );
                  // Implement log
                  // Implement logic to add education
                  Navigator.pop(context);
                },
                child: Text('Add Skills'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Resume'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ButtonDesign(
              buttonText: "Add CV",
              onPressed: _openAddCVDialog,
            ),
            const SizedBox(
              height: 8,
            ),
            ButtonDesign(
              buttonText: "Add Project",
              onPressed: _openAddProjectDialog,
            ),
            const SizedBox(
              height: 8,
            ),
            ButtonDesign(
              buttonText: "Add Experience ",
              onPressed: _openAddExperienceDialog,
            ),
            const SizedBox(
              height: 8,
            ),
            ButtonDesign(
              buttonText: "Add Education",
              onPressed: _openAddEducationDialog,
            ),
            const SizedBox(
              height: 8,
            ),
            ButtonDesign(
              buttonText: "Add Skills",
              onPressed: _openAddSkillDialog,
            ),
            const SizedBox(
              height: 8,
            ),
            ButtonDesign(
              buttonText: "Add Language",
              onPressed: _openAddLanguageDialog,
            ),
            SizedBox(height: 20.0),
            if (_uploadedResume.isNotEmpty) // Check if resume is uploaded
              Text(
                'Uploaded Resume: $_uploadedResume',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ManageResume(),
  ));
}
