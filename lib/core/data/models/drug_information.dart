class DrugInformation {
  final String info;
  final dynamic duration;
  final String measureUnit;

  DrugInformation({
    required this.info,
    required this.duration,
    required this.measureUnit,
  });
}

List<DrugInformation> drugInfo = [
  DrugInformation(
    info: 'Loading',
    duration: 150,
    measureUnit: 'ml',
  ),
  DrugInformation(
    info: 'Maintenance',
    duration: 25,
    measureUnit: 'ml',
  ),
  DrugInformation(
    info: 'Duration',
    duration: 15,
    measureUnit: 'm',
  ),
  DrugInformation(
    info: 'Full Amount',
    duration: 200,
    measureUnit: 'ml',
  ),

];