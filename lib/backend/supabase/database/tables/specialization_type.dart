import '../database.dart';

class SpecializationTypeTable extends SupabaseTable<SpecializationTypeRow> {
  @override
  String get tableName => 'specialization_type';

  @override
  SpecializationTypeRow createRow(Map<String, dynamic> data) =>
      SpecializationTypeRow(data);
}

class SpecializationTypeRow extends SupabaseDataRow {
  SpecializationTypeRow(super.data);

  @override
  SupabaseTable get table => SpecializationTypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
