import '../database.dart';

class UserOtpTable extends SupabaseTable<UserOtpRow> {
  @override
  String get tableName => 'user_otp';

  @override
  UserOtpRow createRow(Map<String, dynamic> data) => UserOtpRow(data);
}

class UserOtpRow extends SupabaseDataRow {
  UserOtpRow(super.data);

  @override
  SupabaseTable get table => UserOtpTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get otp => getField<String>('otp');
  set otp(String? value) => setField<String>('otp', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);
}
