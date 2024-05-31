import '../database.dart';

class PersonTable extends SupabaseTable<PersonRow> {
  @override
  String get tableName => 'person';

  @override
  PersonRow createRow(Map<String, dynamic> data) => PersonRow(data);
}

class PersonRow extends SupabaseDataRow {
  PersonRow(super.data);

  @override
  SupabaseTable get table => PersonTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get middleName => getField<String>('middle_name');
  set middleName(String? value) => setField<String>('middle_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get mobile => getField<String>('mobile');
  set mobile(String? value) => setField<String>('mobile', value);

  PostgresTime get lastLogin => getField<PostgresTime>('last_login')!;
  set lastLogin(PostgresTime value) =>
      setField<PostgresTime>('last_login', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get profession => getField<String>('profession');
  set profession(String? value) => setField<String>('profession', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);
}
