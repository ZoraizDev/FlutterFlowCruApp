import '../database.dart';

class FriendRequestsTable extends SupabaseTable<FriendRequestsRow> {
  @override
  String get tableName => 'friend_requests';

  @override
  FriendRequestsRow createRow(Map<String, dynamic> data) =>
      FriendRequestsRow(data);
}

class FriendRequestsRow extends SupabaseDataRow {
  FriendRequestsRow(super.data);

  @override
  SupabaseTable get table => FriendRequestsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get friendId => getField<String>('friend_id');
  set friendId(String? value) => setField<String>('friend_id', value);
}
