public class DemoClassLCT13 {
    //Day 1 session
    //Class level variables
    //constructors will be simillar to the class name with not static and without any return type
    public DemoClassLCT13(){
        system.debug('I am inside this constructor');
    }
    // testMethod1 is a static method and without any return type
    /*
     	//how we call any static method
		DemoClassLCT13.testMethod1();
     */
    public static void testMethod1(){
        system.debug('I am inside testmethod 1');
        system.debug('My Name is LCT Batch Demo Classs');
    }
    // testMethod2 is a non static method and without any return type
    /*
     	//how we call any non static method
        DemoClassLCT13 abc = new DemoClassLCT13();
        abc.testMethod2();
    */
    public void testMethod2(){
        system.debug('I am inside testmethod 2');
    }
    //testMethod3 is static method with no retrun type and two parameter
    //One String Type parameter and One Integer Type parameter
    /*
     //call it in below manner by passing two parameters
     DemoClassLCT13.testMethod3('Anshuman',7);
	*/
    public static void testMethod3(String name, Integer num){
        system.debug('Print the first parameter-->'+name);
        system.debug('Print the second parameter'+num);
    }
    public static String testMethod4(Integer num){
        //bacthName is the Variable with String DataType
        String bacthName = 'Demo Class Batch '+num;
        system.debug('Inside testMethod4-->'+bacthName);
        return bacthName;
    }
    //fetchTheBatchName calls one more method with in the class to fetch the returned variable
    public static void fetchTheBatchName(){
        String retreivedBatchName = testMethod4(12);
        system.debug('Inside fetchTheBatchName-->'+retreivedBatchName);
    }
    //Collections
    public static void setCollections(){
        Set<String> colorsSet = new Set<String>();
        system.debug('Set before-->'+colorsSet);
        Set<Integer> numberSet = new Set<Integer>{1,4,5,7};
        colorsSet.add('Red');
        colorsSet.add('Green');
        colorsSet.add('Yellow');
        system.debug('Set after-->'+colorsSet);
    }
    public static void listCollection(){
        List<String> colorsList = new List<String>();
        system.debug('List before-->'+colorsList);
        List<Integer> numberList = new List<Integer>{1,4,5,7};
        colorsList.add('Red');
        colorsList.add('Green');
        colorsList.add('Yellow');
        colorsList.add('Red');
        system.debug('List after-->'+colorsList);
        system.debug('Yellow Colorr-->'+colorsList[2]);
    }
    public static void mapCollections(){
        Map<Integer,String> colorsMap = new Map<Integer, String>();
        colorsMap.put(10,'Red');
        colorsMap.put(12,'Green');
        colorsMap.put(3,'Yellow');
        colorsMap.put(4,'Orange');
        colorsMap.put(5,'Black');
        colorsMap.put(3,'Yellow');
        system.debug('Print the color map-->'+colorsMap);
        //Print the color map-->{3=Yellow, 4=Orange, 5=Black, 10=Red, 12=Green}
        system.debug('Print the keyset of color map-->'+colorsMap.keyset());
        //Print the keyset of color map-->{3, 4, 5, 10, 12}
        system.debug('Print the values of color map-->'+colorsMap.values());
        //Print the values of color map-->(Red, Green, Yellow, Orange, Black)
        system.debug('Print the yellow of color map-->'+colorsMap.get(3));
        //Print the yellow of color map-->Yellow
        system.debug('Print the green of color map-->'+colorsMap.get(12));
        
        for(Integer temp : colorsMap.keyset()){
            system.debug('Print all the keys--'+temp);
        }
    }
}