class DrugModel {
  String? drugId;
  String? drugName;
  String? drugImage;
  String? drugLoadingDose;
  String? drugMaintenanceDose;
  String? drugActiveDuration;
  String? drugFullAmount;
  String? drugDesc;

  DrugModel({
    this.drugId,
    this.drugName,
    this.drugImage,
    this.drugLoadingDose,
    this.drugMaintenanceDose,
    this.drugActiveDuration,
    this.drugFullAmount,
    this.drugDesc,
  });

  DrugModel.fromJson(Map<String, dynamic> json) {
    drugId = json['drugId'];
    drugName = json['drugName'];
    drugImage = json['image'];
    drugLoadingDose = json['loading'];
    drugMaintenanceDose = json['maintenance'];
    drugActiveDuration = json['duration'];
    drugFullAmount = json['fullAmount'];
    drugDesc = json['drugDesc'];
  }

  Map<String, dynamic> toMap() {
    return {
      'drugId': drugId,
      'drugName': drugName,
      'drugImage': drugImage,
      'drugLoadingDose': drugLoadingDose,
      'drugMaintenanceDose': drugMaintenanceDose,
      'drugActiveDuration': drugActiveDuration,
      'drugFullAmount': drugFullAmount,
      'drugDesc': drugDesc,
    };
  }
}
