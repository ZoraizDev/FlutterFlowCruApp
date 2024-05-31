import '../database.dart';

class ForumThreadsTable extends SupabaseTable<ForumThreadsRow> {
  @override
  String get tableName => 'forum_threads';

  @override
  ForumThreadsRow createRow(Map<String, dynamic> data) => ForumThreadsRow(data);
}

class ForumThreadsRow extends SupabaseDataRow {
  ForumThreadsRow(super.data);

  @override
  SupabaseTable get table => ForumThreadsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get forumId => getField<int>('forum_id');
  set forumId(int? value) => setField<int>('forum_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);
}
