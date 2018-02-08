public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String aha = new String(noSpaces(word));
  System.out.println(reverse(aha));
  if(aha.equals(reverse(aha)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int last=str.length()-1;
    for(int nI=last;nI>=0;nI--)
        sNew=sNew+str.substring(nI,nI+1);
    return sNew;

}

public String noSpaces(String str)
{
  String lower = new String(str.toLowerCase());
  String result = new String();
  for (int i = 0; i < str.length(); i++)
  {
    if(Character.isLetter(lower.charAt(i)) ==true)
    result = result + lower.charAt(i);
    
  }
  return result;


}


