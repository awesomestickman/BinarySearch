
private Item[] store = {new Item(184,14),
        new Item(196,60),
        new Item(206,31),
        new Item(2370,65),
        new Item(7282,73),
        new Item(8303,90),
        new Item(12328,63),
        new Item(12705,14),
        new Item(13066,8),
        new Item(14088,92),
        new Item(15320,82),
        new Item(15814,60),
        new Item(15917,51),
        new Item(17911,96),
        new Item(18061,3),
        new Item(18410,56),
        new Item(18465,27),
        new Item(18618,64),
        new Item(18871,69),
        new Item(19967,45)
};                             
public int linearSearch(int catNumToFind)
{
    //complete this method
    for(int i=0;i<store.length;i++){

        if(store[i].getCatNum()==catNumToFind){

            return store[i].getInventory();
        }
    }
    return -1;
}
public int binarySearch(int catNumToFind)
{
   int high=store.length-1;
  int low=0;
  int index;
  int y=catNumToFind;
  
  while(low<=high){
    index=(low+high)/2;
    if(store[index].getCatNum()==catNumToFind){
  
    return store[index].getInventory();
  
  }
   if(store[index].getCatNum()<catNumToFind){
     low=index+1;
     
  
  }
   if(store[index].getCatNum()>catNumToFind){
    high=index-1;
  
  }
  
  
  }
     
    return -1;    
}
public int binarySearch(int catNumToFind,int nLow, int nHigh)
{
    int thehigh=nHigh;
  int thelow=nLow;
  int high=nHigh;
  int low=nLow;
  if(low>high){
  return -1;
  }
  int index=(low+high)/2;
  int guess=store[index].getCatNum();
  if(guess>catNumToFind){
   thehigh=index-1;
  }
  if(guess<catNumToFind){
  thelow=index+1;
  
  
  }
  if(guess==catNumToFind){
  
  return store[index].getInventory();
  }
  
  return binarySearch(catNumToFind, thelow, thehigh);
               
}
public void setup()
{
    int[] tests = {0,183,184,2370,15320,19967,19968};
    System.out.println();
    System.out.println("Testing Linear Search");
    System.out.println("=====================");
    for (int i = 0; i < tests.length; i++)
    {

        if(linearSearch(tests[i]) != -1)
            System.out.println("Catalog #"+tests[i]+" has "+linearSearch(tests[i]) + " in stock");
        else
            System.out.println("Catalog #"+tests[i]+" not found");
    }
    System.out.println();
    System.out.println("Testing Non Recursive Binary Search");
    System.out.println("===================================");
    for (int i = 0; i < tests.length; i++)
    {

        if(binarySearch(tests[i]) != -1)
            System.out.println("Catalog #"+tests[i]+" has "+binarySearch(tests[i]) + " in stock");
        else
            System.out.println("Catalog #"+tests[i]+" not found");
    }
    System.out.println();
    System.out.println("Testing Recursive Binary Search");
    System.out.println("===============================");
    for (int i = 0; i < tests.length; i++)
    {

        if(binarySearch(tests[i],0,store.length - 1) != -1)
            System.out.println("Catalog #"+tests[i]+" has "+binarySearch(tests[i],0,store.length - 1) + " in stock");
        else
            System.out.println("Catalog #"+tests[i]+" not found");
    }

}

public void draw()
{
    //empty!
}





