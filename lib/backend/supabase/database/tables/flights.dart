import '../database.dart';

class FlightsTable extends SupabaseTable<FlightsRow> {
  @override
  String get tableName => 'flights';

  @override
  FlightsRow createRow(Map<String, dynamic> data) => FlightsRow(data);
}

class FlightsRow extends SupabaseDataRow {
  FlightsRow(super.data);

  @override
  SupabaseTable get table => FlightsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get flightDate => getField<String>('flight_date');
  set flightDate(String? value) => setField<String>('flight_date', value);

  String? get departureLocation => getField<String>('departure_location');
  set departureLocation(String? value) =>
      setField<String>('departure_location', value);

  String? get departureName => getField<String>('departure_name');
  set departureName(String? value) => setField<String>('departure_name', value);

  String? get tailNumber => getField<String>('tail_number');
  set tailNumber(String? value) => setField<String>('tail_number', value);

  String? get arrivalName => getField<String>('arrival_name');
  set arrivalName(String? value) => setField<String>('arrival_name', value);

  String? get arrivalLocation => getField<String>('arrival_location');
  set arrivalLocation(String? value) =>
      setField<String>('arrival_location', value);
}
