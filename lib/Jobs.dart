import 'package:flutter/material.dart';

class jobs extends StatefulWidget {
  @override
  _JobsPageState createState() => _JobsPageState();
}

class _JobsPageState extends State<jobs> {
  List<Job> jobs = [
    Job(
      title: 'Software Engineer',
      company: 'Company A',
      location: 'City X',
      description: 'Job description for Software Engineer',
    ),
    Job(
      title: 'Web Developer',
      company: 'Company B',
      location: 'City Y',
      description: 'Job description for Web Developer',
    ),
    Job(
      title: 'Data Analyst',
      company: 'Company C',
      location: 'City Z',
      description: 'Job description for Data Analyst',
    ),
  ];

  List<Job> filteredJobs = [];

  @override
  void initState() {
    filteredJobs = jobs;
    super.initState();
  }

  void filterJobs(String searchQuery) {
    setState(() {
      filteredJobs = jobs
          .where((job) =>
              job.title.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    });
  }

  void navigateToJobDetails(Job job) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => JobDetailsPage(job: job),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jobs'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterJobs,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Jobs',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredJobs.length,
              itemBuilder: (BuildContext context, int index) {
                final job = filteredJobs[index];
                return Card(
                  child: ListTile(
                    title: Text(job.title),
                    subtitle: Text(job.company),
                    onTap: () => navigateToJobDetails(job),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Job {
  final String title;
  final String company;
  final String location;
  final String description;

  Job({
    required this.title,
    required this.company,
    required this.location,
    required this.description,
  });
}

class JobDetailsPage extends StatelessWidget {
  final Job job;

  JobDetailsPage({required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              job.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Company: ${job.company}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Location: ${job.location}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              job.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
