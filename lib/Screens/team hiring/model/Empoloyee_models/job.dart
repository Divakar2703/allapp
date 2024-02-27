  class Job {
  final String companyName;
    final String companyImage;
  final String jobTitle;
  final String location;
  final String locationShort;
  final String salary;
  final String jobType;
  final String hr;
  final List<String> requirements;
  final String about;
  final String timeStamp;
  final String cn;



  Job({
    required this.companyName,
    required this.companyImage,
    required this.jobTitle,
    required this.location,
    required this.locationShort,
    required this.salary,
    required this.jobType,
    required this.hr,
    required this.requirements,
    required this.about,
    required this.timeStamp,
    required this.cn,
  });
}

final recentJobs = [
  Job(
    companyName: "Twitter",
    companyImage: "assets/ic_twitter.png",
    jobTitle: "Software Developer",
    location: "Gurugram",
    locationShort: "Gurugram",
    salary: "Rs.4-5 LPA",
    jobType: "Full Time " " WFH",
    hr: "Praveen Rao | Hr.",
    cn: "bitsPan India",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ] ,
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "2h",
  ),
  Job(
    companyName: "Facebook",
    companyImage: "assets/ic_facebook.png",
    jobTitle: "iOS Developer",
    location: "Delhi",
    locationShort: "Delhi",
    salary: "Rs.4-10 LPA",
    jobType: "Full Time | WFO",
    hr: "Praveen Rao | Hr.",
    cn: "bitsPan India",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "3h",
  ),
  Job(
    companyName: "Google",
    companyImage: "assets/ic_google.png",
    jobTitle: "Product Desainer",
    location: "Chittorgarh",
    locationShort: "Chittorgarh",
    salary: "Rs.3-5 LPA",
    jobType: "Full Time | WFA",
    hr: "Praveen Rao | Hr.",
    cn: "bitsPan India",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "4h",
  ),
  Job(
    companyName: "Amazon",
    companyImage: "assets/ic_amazon.png",
    jobTitle: "Senior Marketing",
    location: " Mumbai",
    locationShort: "Mumbai",
    salary: "Rs.4-5 LPA",
    jobType: "Full Time | WFA",
    hr: "Praveen Rao | Hr.",
    cn: "bitsPan India",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "5h",
  ),
  Job(
    companyName: "Facebook",
    companyImage: "assets/ic_facebook.png",
    jobTitle: "iOS Developer",
    location: "Delhi",
    locationShort: "Delhi",
    salary: "Rs.4-5 LPA",
    jobType: "Full Time | WFO",
    hr: "Praveen Rao | Hr.",
    cn: "bitsPan India",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "3h",
  ),
  Job(
    companyName: "Facebook",
    companyImage: "assets/ic_facebook.png",
    jobTitle: "iOS Developer",
    location: "Delhi",
    locationShort: "Delhi",
    salary: "Rs.4-7 LPA",
    jobType: "Full Time | WFO",
    hr: "Praveen Rao | Hr.",
    cn: "bitsPan India",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "3h",
  ),
  Job(
    companyName: "Google",
    companyImage: "assets/ic_google.png",
    jobTitle: "Product Desainer",
    location: "Chittorgarh",
    locationShort: "Chittorgarh",
    salary: "Rs.6-10 LPA",
    jobType: "Full Time | WFA",
    hr: "Praveen Rao | Hr.",
    cn: "bitsPan India",
    requirements: [
      "3 years of software development experience",
      "Excelent problem solving skills",
      "String verbal & written comunication skills",
      "Excelent understanding tech stack",
      "High level proviciency in Figma",
      "Has a knowlege several programing language such as Phyton, Go, Kotlin",
      "Has deep understanding Android lifecycle",
      "Exhibits excelent desain and illustration skills",
    ],
    about:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    timeStamp: "4h",
  ),
];
