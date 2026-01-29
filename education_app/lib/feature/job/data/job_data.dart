import '../../../gen/assets.gen.dart';
import '../domain/clsJob.dart';

class JobData{
  static List<Job>listJobs= [
    Job(favourite: true,title: "UX Designer",company: "Google",description: "We are looking for a talented UX Designer experienced in crafting intuitive user interfaces. Y...",
        experience: "Middle",location: "California, USA",period: "Full-time",iconPath: Assets.images.googleIcon.path)
    ,    Job(title: "QA Engineer",company: "Microsoft",description: "Our Company looking for a professional QA Engineer. Hybrid work format and pleasant office.",
        experience: "Middle+",location: "New York, USA",period: "Hybrid",iconPath: Assets.images.microsoftIcon.path)
    ,   Job(favourite: true,title: "Junior UI Designer",company: "Sky",description: "We’re here to drive digital communication through technology innovation.  The Group Digital Engagement.",
        experience: "Junior",location: "New York, USA",period: "Remotely",iconPath: Assets.images.skyIcon.path)
    ,   Job(title: "Content Designer",company: "Lsn Hayni",description: "We are looking for a talented UX Designer experienced in crafting intuitive user interfaces. Y...",
        experience: "Senior",location: "New York, USA",period: "Full-time",iconPath: Assets.images.lsnIcon.path),
    Job(favourite: true,title: "Flutter",company: "Google",description: "We are looking for a talented Flutter Developer experienced in crafting intuitive user interfaces. Y...",
        experience: "Junior",location: "Cair, Egypt",period: "Full-time",iconPath: Assets.images.googleIcon.path)
    ,    Job(title: "Data Engineer",company: "Microsoft",description: "Our Company looking for a professional Data Engineer. Hybrid work format and pleasant office.",
        experience: "Senior",location: "New York, USA",period: "Hybrid",iconPath: Assets.images.microsoftIcon.path)
    ,   Job(favourite: true,title: "DevOps Developer",company: "Sky",description: "We’re here to drive digital communication through technology innovation.  The Group Digital Engagement.",
        experience: "Senior",location: "New York, USA",period: "Remotely",iconPath: Assets.images.skyIcon.path)
    ,   Job(title: "Content Creator",company: "Lsn Hayni",description: "We are looking for a talented Content Creator experienced in crafting intuitive user interfaces. Y...",
        experience: "Junior",location: "New York, USA",period: "Full-time",iconPath: Assets.images.lsnIcon.path),
  ];
}