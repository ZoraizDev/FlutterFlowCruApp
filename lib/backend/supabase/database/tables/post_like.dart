import '../database.dart';

class PostLikeTable extends SupabaseTable<PostLikeRow> {
  @override
  String get tableName => 'post_like';

  @override
  PostLikeRow createRow(Map<String, dynamic> data) => PostLikeRow(data);
}

class PostLikeRow extends SupabaseDataRow {
  PostLikeRow(super.data);

  @override
  SupabaseTable get table => PostLikeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get postId => getField<int>('post_id');
  set postId(int? value) => setField<int>('post_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
