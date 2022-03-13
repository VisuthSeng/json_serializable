import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

@JsonSerializable()
class TestModel {
  final String name;
  final String age;
  final String location;
  final String image;

  TestModel(
      {required this.name,
      required this.age,
      required this.location,
      required this.image});

  factory TestModel.fromJson(Map<String, dynamic> json) =>
      _$TestModelFromJson(json);

  /// Connect the generated [_$TestModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$TestModelToJson(this);

  @override
  String toString() =>
      'TestModel{name:$name,age:$age,location:$location,image:$image';
}
