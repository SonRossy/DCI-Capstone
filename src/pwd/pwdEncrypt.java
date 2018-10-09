package pwd;

/*
 * Team 3 :
 * Naresh Kc, Clarissa Mercado
 */
import java.util.*;


public class pwdEncrypt{
	
	//declaring class variables
	protected String  a;
	 private String pwd1;
	 private String gotString = getString();

	 int key;
	
	public pwdEncrypt(int key) {
		this.key = key;
		
	}
/*	private int parseItem(int key) {
		return 0;
	}*/
	
	public String Pwd1Hash() {
		char[] a = pwd1.toCharArray();
		for(int i = 0;i<a.length;i++) {
			a[i] = (char) (a[i]+5);
		}
		String ab = "";
		for(char b:a)
			ab+=b;
		return ab;
	}
	
	/*
	 * @param pwd1
	 * returns string
	 */
	public String Pwd1UnHash(String pwd1) {
		char[] a = pwd1.toCharArray();
		for(int i = 0;i<a.length;i++) {
			a[i] = (char) (a[i]-5);
		}
		String ab = "";
		for(char b:a)
			ab+=b;
		return ab;
	}

	/* ENCRYPTING METHOD
	*	Passes value of string, reverses the sequence of char(w/ reverseit)
	*	char array juggled filled with the returned string value from the juggle method converted to char []
	*	retunIt string filled with juggled char[]
	*	new char [] made with returnIt String at last index will be replaced with certain char values using for loop
	*	For each loop used to add fill returnITAlso with char[] array and concatenated with output of gotString 
	*/
	public String encrypt(String pwd) {
		pwd1 =reverseIt(pwd);
		char[] juggled = juggle().toCharArray();
		String returnIt = "";
		String returnItAlso="";
		for(int i=0;i<juggled.length;i++) {
			 returnIt+=juggled[i];}
		char[] a = returnIt.toCharArray();
		for(char b:a) {
		returnItAlso+=b;	
		}
		returnItAlso = gotString + returnItAlso;
		return returnItAlso;}
	
	/*	DECRYPTION METHOD
	* Declared new char[] filled by the encrypted password and int/char [] with the same length
	* Replace the values we switched in encryption using the for loop
	* Used another for loop to undo the juggling 
	* Used for loop to fill new String appropriately 
	*/
	public String decrypt(String encPwd) {
		char[] a = encPwd.toCharArray();

		char temp = 0;
		String toReturn="";
		for(int i=4;i<a.length-1;i++){
			if(i%2==0) {
				temp=a[i];
				if(i<a.length-1) {
				a[i] =a[i+1];}
			}
			else {
				a[i] =temp;
			}
		}
		
		for(int i=4;i<a.length-1;i++)
			toReturn+=a[i];
		String final23 =  reverseIt(toReturn);	
		return Pwd1UnHash(final23);
	}
		
	/*	SALT METHOD
	*	Returns a pseudorandom int implemented by the random class
	*/
	public int getSalt(){
		Random RANDOM  = new Random();
		int a = RANDOM.nextInt(key);
		return a;
		}
	

	/*	CONCATENATE METHOD
	*	Concatenates pwd1 =reverseIt(pwd) with the int output from Salting
	*/
	public String concat(){
		return Pwd1Hash() ;}
	
	
	/*	JUGGLE METHOD
	*	Takes the concatenated output(reversed password string+int) & puts in char array
	*	For loop used to with if else statement to replace certain indices in the char []
	*	For each loop used to fill empty toReturn string with the values in the charIndex char[]
	*/
	public  String juggle() {
		char[] charIndex = concat().toCharArray();
		char temp = 0;
		String toReturn="";
		for(int i=0;i<charIndex.length;i++) {
			if(i%2==0) {
				temp=charIndex[i];
				if(i<charIndex.length-1){
				charIndex[i] =charIndex[i+1];}}
			else{
				charIndex[i] =temp;
			}}
		for(char c:charIndex)
			toReturn+=c;
		return toReturn;
		}
	
	/*	REVERSE IT METHOD
	*	function checks if string a is empty; if not return a String filled with char values
	*	determined by a for loop (which prints the string backwards) 
	*/
	public static String reverseIt(String a) {
		String reverseIt = "";
   if(!a.isEmpty()) {
  for (int i = a.length() - 1; i >= 0; i--) {
   reverseIt += a.charAt(i);
  
 }}
 return reverseIt;
}
	
	/*	GETSTRING METHOD
	* String [] created, random object created,
	* Fill String [] with random ints 
	*/
	protected static String getString() {
		String[] a = {"a33!","d@Q1","2G8e","9aYc","!(wx","qc@d","as%w","12&3","98!2","a!qq","sf1f","as@s" +"do)o"};
		Random random = new Random();
		int b= random.nextInt(a.length-1);
		return a[b];
			}
}