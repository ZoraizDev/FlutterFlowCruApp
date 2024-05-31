import '../database.dart';

class ForumsTable extends SupabaseTable<ForumsRow> {
  @override
  String get tableName => 'forums';

  @override
  ForumsRow createRow(Map<String, dynamic> data) => ForumsRow(data);
}

class ForumsRow extends SupabaseDataRow {
  ForumsRow(super.data);

  @override
  SupabaseTable get table => ForumsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get subtitle => getField<String>('subtitle');
  set subtitle(String? value) => setField<String>('subtitle', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get featureImage => getField<String>('feature_image');
  set featureImage(String? value) => setField<String>('feature_image', value);

  String? get webLink => getField<String>('web_link');
  set webLink(String? value) => setField<String>('web_link', value);

  String? get forumType => getField<String>('forum_type');
  set forumType(String? value) => setField<String>('forum_type', value);
}
