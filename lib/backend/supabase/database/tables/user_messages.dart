import '../database.dart';

class UserMessagesTable extends SupabaseTable<UserMessagesRow> {
  @override
  String get tableName => 'user_messages';

  @override
  UserMessagesRow createRow(Map<String, dynamic> data) => UserMessagesRow(data);
}

class UserMessagesRow extends SupabaseDataRow {
  UserMessagesRow(super.data);

  @override
  SupabaseTable get table => UserMessagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get messages => getField<String>('messages')!;
  set messages(String value) => setField<String>('messages', value);

  List<String> get userIds => getListField<String>('user_ids');
  set userIds(List<String> value) => setListField<String>('user_ids', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
