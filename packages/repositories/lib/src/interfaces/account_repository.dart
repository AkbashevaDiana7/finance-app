import 'package:models/models.dart';

/// Репозиторий для работы со счетами пользователя
abstract interface class AccountRepository {
  Future<List<Account>> getAllAccounts();
  
  Future<Account?> getAccountById(int id);
  
  Future<AccountSummary?> getAccountSummary(int id);

  Future<Account> createAccount({
    required String name,
    required Money initialBalance,
  });

  Future<Account> updateAccount({
    required int id,
    String? name,
    Money? balance,
  });
} 
