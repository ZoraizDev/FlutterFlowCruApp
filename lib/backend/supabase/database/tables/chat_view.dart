import '../database.dart';

class ChatViewTable extends SupabaseTable<ChatViewRow> {
  @override
  String get tableName => 'chat_view';

  @override
  ChatViewRow createRow(Map<String, dynamic> data) => ChatViewRow(data);
}

class ChatViewRow extends SupabaseDataRow {
  ChatViewRow(super.data);

  @override
  SupabaseTable get table => ChatViewTable();

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  List<String> get usernames => getListField<String>('usernames');
  set usernames(List<String>? value) =>
      setListField<String>('usernames', value);

  List<String> get userIds => getListField<String>('user_ids');
  set userIds(List<String>? value) => setListField<String>('user_ids', value);

  String? get lastMessage => getField<String>('last_message');
  set lastMessage(String? value) => setField<String>('last_message', value);
}
