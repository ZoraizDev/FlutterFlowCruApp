import '../database.dart';

class WorkHistoryTable extends SupabaseTable<WorkHistoryRow> {
  @override
  String get tableName => 'work_history';

  @override
  WorkHistoryRow createRow(Map<String, dynamic> data) => WorkHistoryRow(data);
}

class WorkHistoryRow extends SupabaseDataRow {
  WorkHistoryRow(super.data);

  @override
  SupabaseTable get table => WorkHistoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get postionId => getField<int>('postion_id');
  set postionId(int? value) => setField<int>('postion_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  int? get placeId => getField<int>('place_id');
  set placeId(int? value) => setField<int>('place_id', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
