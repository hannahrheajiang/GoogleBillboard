public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
String eNew = e.replace(".", "");

public void setup()  
{            
    for (int i = 0; i< eNew.length()-10; i++)
    {
      String segment = eNew.substring(i, i+10);
      double doubleSegment = Double.parseDouble(segment);
      if (isPrime(doubleSegment) == true)
      {
        System.out.println("Puzzle 1");
        System.out.println("first 10-digit prime found in consecutive digits of 'e': " + segment);
        break;
      }
    }
    
    System.out.println("Puzzle 2:");
    int count = 0;
    for (int i = 0; i< eNew.length()-9; i++)
    {
      String segment = eNew.substring(i, i+10);
      if (findSum(segment) == 49) {
      count ++;
      System.out.println("f(" + count + ") = " + segment);
      }
    }
}  

public void draw()  
{   
  //not needed for this assignment
}  

public boolean isPrime(double dNum)  
{   
   for (int i = 2; i <= Math.sqrt(dNum); i++)
   {
     if (dNum % i == 0)
     {
       return false;
     }
   }
   if (dNum <= 1)
   {
     return false;
   }
  return true;
} 

public double findSum(String dNum)
{
  int sum = 0;
  for (int i = 0; i < dNum.length(); i++){
    String segment = dNum.substring(i, i+1);
    double doubleSegment = Double.parseDouble(segment);
    sum += doubleSegment;
  }
  return sum;
}
