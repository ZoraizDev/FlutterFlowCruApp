import '../database.dart';

class PostCommentsTable extends SupabaseTable<PostCommentsRow> {
  @override
  String get tableName => 'post_comments';

  @override
  PostCommentsRow createRow(Map<String, dynamic> data) => PostCommentsRow(data);
}

class PostCommentsRow extends SupabaseDataRow {
  PostCommentsRow(super.data);

  @override
  SupabaseTable get table => PostCommentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get postId => getField<int>('post_id');
  set postId(int? value) => setField<int>('post_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);
}
