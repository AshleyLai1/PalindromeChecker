public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  // String str = "";
  String temp = "";
  temp = onlyLetters(noSpaces(noCapitals(word)));
  // for(int i = word.length()-1;i>=0;i--){

  //   str+= word.substring(i,i+1);
  // }
  if(temp.equals(reverse(word))){
    return false;
  }
  return true;

}
public String reverse(String str)
{
  String sNew = new String();
  for(int i =str.length()-1; i >= 0; i--){
    sNew+=str.substring(i, i+1);
}
  return sNew;

    //your code here


}
public String noCapitals(String sWord){
  String str = sWord.toLowerCase();
  return str;
}
public String noSpaces(String sWord){
  String str = "";
  
  for(int i =0;i<sWord.length();i++){
    if(sWord.substring(i,i+1).equals(" ")){
      int s;
    }
    else{
      str+=sWord.substring(i,i+1);
    }
  }
  return str;
}
public String onlyLetters(String sString){
  String str="";
  for(int i =0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      str+=sString.substring(i,i+1);
    }

  }
  return str;
}




