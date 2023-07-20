import 'package:flutter/material.dart';

class Editprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();
  final TextEditingController _martialStatus = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _streetAddress = TextEditingController();
  final TextEditingController _videoLinkController = TextEditingController();
  final TextEditingController _jobExperienceController =
      TextEditingController();
  final TextEditingController _careerLevelController = TextEditingController();
  final TextEditingController _industryController = TextEditingController();
  final TextEditingController _functionalAreaController =
      TextEditingController();
  final TextEditingController _currentSalaryController =
      TextEditingController();
  final TextEditingController _expectedSalaryController =
      TextEditingController();
  final TextEditingController _salaryCurrencyController =
      TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _fatherNameController.dispose();
    _contactController.dispose();
    _genderController.dispose();
    _nationalityController.dispose();
    _martialStatus.dispose();
    _state.dispose();
    _city.dispose();
    _phoneNumber.dispose();
    _streetAddress.dispose();
    _videoLinkController.dispose();
    _jobExperienceController.dispose();
    _careerLevelController.dispose();
    _industryController.dispose();
    _functionalAreaController.dispose();
    _currentSalaryController.dispose();
    _expectedSalaryController.dispose();
    _salaryCurrencyController.dispose();
    super.dispose();
  }

  void _updateProfile() {
    // Retrieve the input values
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;
    String fatherName = _fatherNameController.text;
    String contact = _contactController.text;
    String gender = _genderController.text;
    String nationality = _nationalityController.text;
    String streetAddress = _streetAddress.text;
    String martialStatus = _martialStatus.text;
    String state = _state.text;
    String phoneNumber = _phoneNumber.text;
    String city = _city.text;
    String videoLink = _videoLinkController.text;
    String jobExperience = _jobExperienceController.text;
    String careerLevel = _careerLevelController.text;
    String industry = _industryController.text;
    String functionalArea = _functionalAreaController.text;
    String currentSalary = _currentSalaryController.text;
    String expectedSalary = _expectedSalaryController.text;
    String salaryCurrency = _salaryCurrencyController.text;

    // Implement your logic to update the profile here

    // Navigate back to Edit Profile screen
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _fatherNameController,
              decoration: InputDecoration(
                labelText: "Father's Name",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _contactController,
              decoration: InputDecoration(
                labelText: 'Contact',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _genderController,
              decoration: InputDecoration(
                labelText: 'Gender',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _nationalityController,
              decoration: InputDecoration(
                labelText: 'Nationality',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _streetAddress,
              decoration: InputDecoration(
                labelText: 'Street Address',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _martialStatus,
              decoration: InputDecoration(
                labelText: 'Martial Status',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _state,
              decoration: InputDecoration(
                labelText: 'State',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _phoneNumber,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _city,
              decoration: InputDecoration(
                labelText: 'City',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _videoLinkController,
              decoration: InputDecoration(
                labelText: 'Video Link',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Career Information',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _jobExperienceController,
              decoration: InputDecoration(
                labelText: 'Job Experience',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _careerLevelController,
              decoration: InputDecoration(
                labelText: 'Career Level',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _industryController,
              decoration: InputDecoration(
                labelText: 'Industry',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _functionalAreaController,
              decoration: InputDecoration(
                labelText: 'Functional Area',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _currentSalaryController,
              decoration: InputDecoration(
                labelText: 'Current Salary',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _expectedSalaryController,
              decoration: InputDecoration(
                labelText: 'Expected Salary',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _salaryCurrencyController,
              decoration: InputDecoration(
                labelText: 'Salary Currency',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _updateProfile,
              child: Text('Update Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
