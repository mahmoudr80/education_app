import 'package:education_app/feature/job/data/job_data.dart';

import '../../../gen/assets.gen.dart';

class Job {
  final String title;
  final String company;
  final String location;
  final String description;
   String? iconPath;
  final String period;
  final String experience;
  bool favourite;
  static final List<Job> listOfAllJobs=JobData.listJobs;
  static final List<Job> listOfFavJobs=_getFavJobs();

  Job(
      {required this.title,required this.company, this.location="New York, USA",
        this.description ="Our Company looking for a professional QA Engineer.Hybrid work format and pleasant office.",
        this.iconPath, this.period="Hybrid", this.experience="Middle",this.favourite=false}){
    if(this.iconPath == null){
    this.iconPath = Assets.images.lsnIcon.path;
    }

  }

  static List<Job> _getFavJobs(){
    List<Job> list = [];
    for(int i = 0 ; i<JobData.listJobs.length;i++){
      if(JobData.listJobs[i].favourite==true){
        list.add(JobData.listJobs[i]);
      }
    }
    return list;
  }

}