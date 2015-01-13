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
  String temp = "";
  word = word.toLowerCase();
  for(int i=0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
    {
      temp = temp + word.charAt(i);
    }
  }
  int j = temp.length() - 1;
  for(int i = 0; i < temp.length()/2; i++)
  {
    if(temp.charAt(i) != temp.charAt(j))
    {
      return false;
    }
    else
    {
      j--;
    }
  }
  return true;
}

