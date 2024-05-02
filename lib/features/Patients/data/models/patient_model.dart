class PatientModel {
  final String name;
  final String status;
  final String surgeryName;

  PatientModel({
    required this.name,
    required this.status,
    required this.surgeryName,
  });

  // PatientModel.fromJson(Map<String, dynamic> json){
  //   name = json['name'];
  //   status = json['status'];
  // }

  // Map<String, dynamic> toMap(){
  //   return{
  //     'name':name,
  //     'email':status,
  //   };
  // }
}


List<PatientModel> patients = [
  PatientModel(
    name: 'Saleh Mohamed hamdy',
    status: 'Active',
    surgeryName: 'Open Heart',
  ),
  PatientModel(
    name: 'Eman Ahmed Khalaf',
    status: 'Done',
    surgeryName: 'Broken bone',
  ),
  PatientModel(
    name: 'Tawfiq Khaled Al-Saied',
    status: 'Done',
    surgeryName: 'laparoscopic',
  ),
  PatientModel(
    name: 'Hend Roshdy Dayasti',
    status: 'Prepare',
    surgeryName: 'Open Heart',
  ),
  PatientModel(
    name: 'Mena George Karlos',
    status: 'Done',
    surgeryName: 'appendix',
  ),
  PatientModel(
    name: 'Mena George Karlos',
    status: 'Done',
    surgeryName: 'Open Heart',
  ),
  PatientModel(
    name: 'Mena George Karlos',
    status: 'Done',
    surgeryName: 'Open Heart',
  ),
  PatientModel(
    name: 'Mena George Karlos',
    status: 'Done',
    surgeryName: 'Open Heart',
  ),
  PatientModel(
    name: 'Mena George Karlos',
    status: 'Done',
    surgeryName: 'Open Heart',
  ),
];
