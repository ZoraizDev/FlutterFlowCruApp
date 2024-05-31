import '../database.dart';

class FriendsTable extends SupabaseTable<FriendsRow> {
  @override
  String get tableName => 'friends';

  @override
  FriendsRow createRow(Map<String, dynamic> data) => FriendsRow(data);
}

class FriendsRow extends SupabaseDataRow {
  FriendsRow(super.data);

  @override
  SupabaseTable get table => FriendsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userFriend => getField<String>('user_friend');
  set userFriend(String? value) => setField<String>('user_friend', value);

  String? get friendName => getField<String>('friend_name');
  set friendName(String? value) => setField<String>('friend_name', value);
}
