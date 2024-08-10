class PatientModel {
  int? pId;
  String? patientName;
  String? patientStatus;
  String? opName;
  String? height;
  String? weight;
  String? age;
  String? gender;
  String? heartState;
  String? hypertension;
  String? diabetes;
  String? periodOfOp;
  String? drugId;
  String? heartRate;
  String? bloodPressure;
  String? rasRate;
  String? oxSaturation;
  String? endTidalCarbon;
  String? temp;
  String? electrocardiogram;

  PatientModel({
    this.pId,
    this.patientName,
    this.patientStatus,
    this.opName,
    this.height,
    this.weight,
    this.age,
    this.gender,
    this.heartState,
    this.hypertension,
    this.diabetes,
    this.periodOfOp,
    this.drugId,
    this.heartRate,
    this.bloodPressure,
    this.rasRate,
    this.oxSaturation,
    this.endTidalCarbon,
    this.temp,
    this.electrocardiogram,
  });

  PatientModel.fromJson(Map<String, dynamic> json) {
    pId = json['pId'] is int ? json['pId'] : int.parse(json['pId']);
    patientName = json['patientName'];
    patientStatus = json['patientStatus'];
    opName = json['opName'];
    height = json['height'];
    weight = json['weight'];
    age = json['age'];
    gender = json['gender'];
    heartState = json['heartState'];
    hypertension = json['hypertension'];
    diabetes = json['diabetes'];
    periodOfOp = json['periodOfOp'];
    drugId = json['drugId'];
    heartRate = json['heartRate'];
    bloodPressure = json['bloodPressure'];
    rasRate = json['rasRate'];
    oxSaturation = json['oxSaturation'];
    endTidalCarbon = json['endTidalCarbon'];
    temp = json['temp'];
    electrocardiogram = json['electrocardiogram'];
  }

  Map<String, dynamic> toMap() {
    return {
      'pId': pId,
      'patientName': patientName,
      'patientStatus': patientStatus,
      'opName': opName,
      'height': height,
      'weight': weight,
      'age': age,
      'gender': gender,
      'heartState': heartState,
      'hypertension': hypertension,
      'diabetes': diabetes,
      'periodOfOp': periodOfOp,
      'drugId': drugId,
      'heartRate': heartRate,
      'bloodPressure': bloodPressure,
      'rasRate': rasRate,
      'oxSaturation': oxSaturation,
      'endTidalCarbon': endTidalCarbon,
      'temp': temp,
      'electrocardiogram': electrocardiogram,
    };
  }
}
