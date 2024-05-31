import '../database.dart';

class EndorcementCategoryTable extends SupabaseTable<EndorcementCategoryRow> {
  @override
  String get tableName => 'endorcement_category';

  @override
  EndorcementCategoryRow createRow(Map<String, dynamic> data) =>
      EndorcementCategoryRow(data);
}

class EndorcementCategoryRow extends SupabaseDataRow {
  EndorcementCategoryRow(super.data);

  @override
  SupabaseTable get table => EndorcementCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
