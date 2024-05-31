import '../database.dart';

class EndorcementTypesTable extends SupabaseTable<EndorcementTypesRow> {
  @override
  String get tableName => 'endorcement_types';

  @override
  EndorcementTypesRow createRow(Map<String, dynamic> data) =>
      EndorcementTypesRow(data);
}

class EndorcementTypesRow extends SupabaseDataRow {
  EndorcementTypesRow(super.data);

  @override
  SupabaseTable get table => EndorcementTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get endorcementCategorId => getField<int>('endorcement_categor_id');
  set endorcementCategorId(int? value) =>
      setField<int>('endorcement_categor_id', value);

  String? get endorcementCategory => getField<String>('endorcement_category');
  set endorcementCategory(String? value) =>
      setField<String>('endorcement_category', value);
}
