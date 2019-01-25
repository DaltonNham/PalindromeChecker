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
  String reV = reverse(word);
  String sFor = new String();
  String sBac = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
    {
      sFor = sFor + word.charAt(i);
    }
    if(Character.isLetter(reV.charAt(i)) == true)
    {
      sBac = sBac + reV.charAt(i);
    }
  }
  sFor = sFor.toLowerCase();
  sBac = sBac.toLowerCase();
  if (sFor.equals(sBac))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int j=str.length()-1; j >= 0; j--)
    {
      sNew = sNew + str.charAt(j);
    }
    return sNew;
}


