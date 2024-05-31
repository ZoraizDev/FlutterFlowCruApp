import '../database.dart';

class PilotFunctionTable extends SupabaseTable<PilotFunctionRow> {
  @override
  String get tableName => 'pilot_function';

  @override
  PilotFunctionRow createRow(Map<String, dynamic> data) =>
      PilotFunctionRow(data);
}

class PilotFunctionRow extends SupabaseDataRow {
  PilotFunctionRow(super.data);

  @override
  SupabaseTable get table => PilotFunctionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get pilotFunctions => getField<String>('pilot_functions');
  set pilotFunctions(String? value) =>
      setField<String>('pilot_functions', value);
}
