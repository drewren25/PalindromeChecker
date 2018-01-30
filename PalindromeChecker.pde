public void setup(){
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true){
      println(lines[i] + " IS a palidrome.");
    }
    else{
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word){
  String smart = new String();
  for(int i =0; i<word.length(); i++){
    if(!(word.charAt(i) == ' ')){
      smart = smart + word.charAt(i);
    }
  }
  String bob = new String();
  for(int i =0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i)) == true){
        bob = bob + word.charAt(i);
      }
  }

  String guitar = new String();
  guitar = bob.toLowerCase();
  if(guitar.equals(reverse(guitar))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String smart = new String();
    for(int i = str.length()-1; i>=0; i--){
      smart = smart + str.charAt(i);
    }
    return smart;
  }