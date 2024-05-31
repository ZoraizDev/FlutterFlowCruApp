import '../database.dart';

class CompanyTable extends SupabaseTable<CompanyRow> {
  @override
  String get tableName => 'company';

  @override
  CompanyRow createRow(Map<String, dynamic> data) => CompanyRow(data);
}

class CompanyRow extends SupabaseDataRow {
  CompanyRow(super.data);

  @override
  SupabaseTable get table => CompanyTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
