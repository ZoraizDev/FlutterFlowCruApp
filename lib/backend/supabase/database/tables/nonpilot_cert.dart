import '../database.dart';

class NonpilotCertTable extends SupabaseTable<NonpilotCertRow> {
  @override
  String get tableName => 'nonpilot_cert';

  @override
  NonpilotCertRow createRow(Map<String, dynamic> data) => NonpilotCertRow(data);
}

class NonpilotCertRow extends SupabaseDataRow {
  NonpilotCertRow(super.data);

  @override
  SupabaseTable get table => NonpilotCertTable();

  String get uniqueId => getField<String>('UNIQUE ID')!;
  set uniqueId(String value) => setField<String>('UNIQUE ID', value);

  String? get firstName => getField<String>('FIRST NAME');
  set firstName(String? value) => setField<String>('FIRST NAME', value);

  String? get lastName => getField<String>('LAST NAME');
  set lastName(String? value) => setField<String>('LAST NAME', value);

  String? get type => getField<String>('TYPE');
  set type(String? value) => setField<String>('TYPE', value);

  String? get level => getField<String>('LEVEL');
  set level(String? value) => setField<String>('LEVEL', value);

  String? get expireDate => getField<String>('EXPIRE DATE');
  set expireDate(String? value) => setField<String>('EXPIRE DATE', value);

  String? get rating1 => getField<String>('RATING1');
  set rating1(String? value) => setField<String>('RATING1', value);

  String? get rating2 => getField<String>('RATING2');
  set rating2(String? value) => setField<String>('RATING2', value);

  String? get rating3 => getField<String>('RATING3');
  set rating3(String? value) => setField<String>('RATING3', value);

  String? get rating4 => getField<String>('RATING4');
  set rating4(String? value) => setField<String>('RATING4', value);

  String? get rating5 => getField<String>('RATING5');
  set rating5(String? value) => setField<String>('RATING5', value);

  String? get rating6 => getField<String>('RATING6');
  set rating6(String? value) => setField<String>('RATING6', value);

  String? get rating7 => getField<String>('RATING7');
  set rating7(String? value) => setField<String>('RATING7', value);

  String? get rating8 => getField<String>('RATING8');
  set rating8(String? value) => setField<String>('RATING8', value);

  String? get rating9 => getField<String>('RATING9');
  set rating9(String? value) => setField<String>('RATING9', value);

  String? get rating10 => getField<String>('RATING10');
  set rating10(String? value) => setField<String>('RATING10', value);

  String? get rating11 => getField<String>('RATING11');
  set rating11(String? value) => setField<String>('RATING11', value);
}
