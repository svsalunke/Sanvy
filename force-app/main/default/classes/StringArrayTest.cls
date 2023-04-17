public class StringArrayTest 
{
        public static String[] generateStringArray(Integer length) 
        {
        String[] sanArray = new List<String>();
        for(Integer i=0;i<length;i++) {
           sanArray.add('Test ' + i);

            System.debug(sanArray[i]);
        } 
        return sanArray;
    }     
}