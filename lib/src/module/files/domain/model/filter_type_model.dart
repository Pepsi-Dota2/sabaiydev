class FilterTypeModel {
  final String name;

  FilterTypeModel({required this.name});
  static final List<FilterTypeModel> getMockFilterTypeData = [
    FilterTypeModel(name: 'Create date'),
    FilterTypeModel(name: 'Date update'),
    FilterTypeModel(name: 'Action Date'),
    FilterTypeModel(name: 'Favorite'),
    FilterTypeModel(name: 'Download'),
  ];
}
