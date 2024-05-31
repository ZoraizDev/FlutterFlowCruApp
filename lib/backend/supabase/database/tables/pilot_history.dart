import '../database.dart';

class PilotHistoryTable extends SupabaseTable<PilotHistoryRow> {
  @override
  String get tableName => 'pilot_history';

  @override
  PilotHistoryRow createRow(Map<String, dynamic> data) => PilotHistoryRow(data);
}

class PilotHistoryRow extends SupabaseDataRow {
  PilotHistoryRow(super.data);

  @override
  SupabaseTable get table => PilotHistoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get specializationId => getField<int>('specialization_id');
  set specializationId(int? value) => setField<int>('specialization_id', value);

  int? get specializationTypeId => getField<int>('specialization_type_id');
  set specializationTypeId(int? value) =>
      setField<int>('specialization_type_id', value);

  int? get specializationRatingId => getField<int>('specialization_rating_id');
  set specializationRatingId(int? value) =>
      setField<int>('specialization_rating_id', value);

  int? get planeId => getField<int>('plane_id');
  set planeId(int? value) => setField<int>('plane_id', value);

  int? get airportId => getField<int>('airport_id');
  set airportId(int? value) => setField<int>('airport_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  dynamic get specializationRatingIds =>
      getField<dynamic>('specialization_rating_ids');
  set specializationRatingIds(dynamic value) =>
      setField<dynamic>('specialization_rating_ids', value);
}
