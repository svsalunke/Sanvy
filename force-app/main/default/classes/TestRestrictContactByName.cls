@isTest
public class TestRestrictContactByName
{
    
    private static testMethod void myMethod1()
    {
        List<Contact> cons=new List<Contact>();
        Contact c1=new Contact();
             c1.FirstName='Test';
             c1.LastName='InvalidName';
             cons.add(c1);
        try{
             insert c1;
           }
        Catch(DMLexception e)
           {
            System.assertEquals('The Last Name "'+c1.LastName+'" is not allowed for DML',e.getDmlMessage(0));
           }
    }
   
 Public static testMethod void myMethod2()
    {
        List<Contact> cons=new List<Contact>();
        Contact c2=new Contact();
        c2.FirstName='Test';
        c2.LastName='Name';
        cons.add(c2);
        insert cons;
        System.assertEquals(c2.LastName, 'Name');
    }
}