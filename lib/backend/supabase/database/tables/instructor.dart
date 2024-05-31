import '../database.dart';

class InstructorTable extends SupabaseTable<InstructorRow> {
  @override
  String get tableName => 'instructor';

  @override
  InstructorRow createRow(Map<String, dynamic> data) => InstructorRow(data);
}

class InstructorRow extends SupabaseDataRow {
  InstructorRow(super.data);

  @override
  SupabaseTable get table => InstructorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
