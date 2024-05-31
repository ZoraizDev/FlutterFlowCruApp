import '../database.dart';

class SpecializationTable extends SupabaseTable<SpecializationRow> {
  @override
  String get tableName => 'specialization';

  @override
  SpecializationRow createRow(Map<String, dynamic> data) =>
      SpecializationRow(data);
}

class SpecializationRow extends SupabaseDataRow {
  SpecializationRow(super.data);

  @override
  SupabaseTable get table => SpecializationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
