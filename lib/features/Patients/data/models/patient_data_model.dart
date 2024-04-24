class PatientDataModel {
  String data;
  String value;

  PatientDataModel({
    required this.data,
    required this.value,
  });
}

List<PatientDataModel> patientData = [
  PatientDataModel(
    data: 'Height',
    value: '160 cm',
  ),
  PatientDataModel(
    data: 'Weight',
    value: '65 kg',
  ),
  PatientDataModel(
    data: 'Age',
    value: '12',
  ),
  PatientDataModel(
    data: 'Gender',
    value: 'stable',
  ),
  PatientDataModel(
    data: 'Heart State',
    value: 'No',
  ),
  PatientDataModel(
    data: 'Hypertension',
    value: 'No',
  ),
  PatientDataModel(
    data: 'Diabetes',
    value: 'Full',
  ),
  PatientDataModel(
    data: 'Period of operation',
    value: '02 : 00  H',
  ),
];
