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
        System.out.println("first 10-digit prime found in consecutive digits of 'e': " + segment);
        break;
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
