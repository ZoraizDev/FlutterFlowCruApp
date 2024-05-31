import '../database.dart';

class AirportsTable extends SupabaseTable<AirportsRow> {
  @override
  String get tableName => 'airports';

  @override
  AirportsRow createRow(Map<String, dynamic> data) => AirportsRow(data);
}

class AirportsRow extends SupabaseDataRow {
  AirportsRow(super.data);

  @override
  SupabaseTable get table => AirportsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get slug => getField<String>('slug');
  set slug(String? value) => setField<String>('slug', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
