class StorageModel {
  final double valueUsed;
  final double valueFree;
  final double calculateValue;
  final int freeSpace;
  final double calculateusePercentage;

  StorageModel({
    required this.valueUsed,
    required this.valueFree,
    required this.freeSpace,
  })  : calculateValue = (valueUsed / valueFree) * 100,
        calculateusePercentage = (valueUsed / valueFree) * 100;

  static final mockStorageData = StorageModel(
    valueUsed: 4000,
    valueFree: 20000,
    freeSpace: 200,
  );
}
