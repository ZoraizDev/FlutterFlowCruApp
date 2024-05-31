import '../database.dart';

class ChatUserTable extends SupabaseTable<ChatUserRow> {
  @override
  String get tableName => 'chat_user';

  @override
  ChatUserRow createRow(Map<String, dynamic> data) => ChatUserRow(data);
}

class ChatUserRow extends SupabaseDataRow {
  ChatUserRow(super.data);

  @override
  SupabaseTable get table => ChatUserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  dynamic get chatUsersIds => getField<dynamic>('chat_users_ids');
  set chatUsersIds(dynamic value) =>
      setField<dynamic>('chat_users_ids', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get messages => getField<String>('messages');
  set messages(String? value) => setField<String>('messages', value);
}
