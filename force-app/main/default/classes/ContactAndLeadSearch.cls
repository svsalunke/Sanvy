public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String name){
        Contact con = new Contact(LastName='Smith');
        upsert con;
        Lead le = new Lead(LastName='Smith',Company='YourCompany');
        upsert le;
        
        List<List<SObject>> searchList = [Find :name IN NAME FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
        return searchList;
    }
}