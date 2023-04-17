public class AccountHandler {
    public static Account insertNewAccount(String accname) {
        Account acc = new Account();
        acc.Name = accname;
        try
        {
            insert acc;
        } catch (Exception e) {
            return null;
        }
        return acc;
    }
}