import '../database.dart';

class SpecializationTypeRatingTable
    extends SupabaseTable<SpecializationTypeRatingRow> {
  @override
  String get tableName => 'specialization_type_rating';

  @override
  SpecializationTypeRatingRow createRow(Map<String, dynamic> data) =>
      SpecializationTypeRatingRow(data);
}

class SpecializationTypeRatingRow extends SupabaseDataRow {
  SpecializationTypeRatingRow(super.data);

  @override
  SupabaseTable get table => SpecializationTypeRatingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get specializationTypeId => getField<int>('specialization_type_id');
  set specializationTypeId(int? value) =>
      setField<int>('specialization_type_id', value);

  String? get specializationTypeName =>
      getField<String>('specialization_type_name');
  set specializationTypeName(String? value) =>
      setField<String>('specialization_type_name', value);
}
