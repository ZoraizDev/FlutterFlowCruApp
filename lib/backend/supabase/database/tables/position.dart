import '../database.dart';

class PositionTable extends SupabaseTable<PositionRow> {
  @override
  String get tableName => 'position';

  @override
  PositionRow createRow(Map<String, dynamic> data) => PositionRow(data);
}

class PositionRow extends SupabaseDataRow {
  PositionRow(super.data);

  @override
  SupabaseTable get table => PositionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
