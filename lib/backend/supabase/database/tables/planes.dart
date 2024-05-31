import '../database.dart';

class PlanesTable extends SupabaseTable<PlanesRow> {
  @override
  String get tableName => 'planes';

  @override
  PlanesRow createRow(Map<String, dynamic> data) => PlanesRow(data);
}

class PlanesRow extends SupabaseDataRow {
  PlanesRow(super.data);

  @override
  SupabaseTable get table => PlanesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get number => getField<String>('number');
  set number(String? value) => setField<String>('number', value);

  String? get make => getField<String>('make');
  set make(String? value) => setField<String>('make', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get engine => getField<String>('engine');
  set engine(String? value) => setField<String>('engine', value);

  String? get body => getField<String>('body');
  set body(String? value) => setField<String>('body', value);

  int? get airportId => getField<int>('airport_id');
  set airportId(int? value) => setField<int>('airport_id', value);
}
