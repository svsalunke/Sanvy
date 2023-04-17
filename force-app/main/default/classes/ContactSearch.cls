public class ContactSearch {

 public static Contact[] searchForContacts(String Lname,String Mailcode)
 {
   Contact[] con = [SELECT ID,Name FROM Contact WHERE LastName=:Lname AND MailingPostalCode=:Mailcode];
   
   System.debug(con.size() + ' contacts returned.');
   return con;
  
   
 }

}