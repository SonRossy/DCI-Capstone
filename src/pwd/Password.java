package pwd;
/*
 * Team 1 : 
 * Son-Rossy Dorvil, Noel Cortes, Hannah Kelly, Reeta Ale Magar 
 */

/**
* @author tristesse08
*/
public class Password {

    private int key1;
   private int key2;
   private char key3;
   
  public Password(int key1, int key2, char key3) {
       this.key1 = key1;
       this.key2 = key2;
       this.key3 = key3;
   }
  

   private  String rev(String s) {//added reverse function and and key3 to string

       String ans = "";
       for (int i = (s.length() - 1); i >= 0; i--) {
           ans += s.charAt(i);
           ans+=Character.toString(key3);

       }

       return ans;
   }
    private  String inv(String s) {//added inverse function and remove key3 from string

       String ans = "";
       for (int i = (s.length() - 2); i >= 0; i=i-2) {
           ans += s.charAt(i);
           //ans+=Character.toString(key3);

       }

       return ans;
   }


   public  String encode(String st) {
       if (st.length() < 7) {
           System.out.println("password too short");
           return null;
       }
       char[] str = st.toCharArray();
       char[] temp = new char[str.length];
       String result;

       for (int i = 0; i < str.length; i++) {
           temp[i] = (char) (str[i] + (str.length+key1*key2));
       }
       result = rev(String.valueOf(temp));

       return result;
   }

   public  String decode(String s) {
       if (s.length() < 8) {
           System.out.println("password too short");
           return null;
       }

        s=inv(s); 
       char[] str = s.toCharArray();
       char[] temp = new char[str.length];
       for (int i = 0; i < str.length; i++) {
           temp[i] = (char) (str[i] - (str.length+key1*key2));
       }
       String decrypt = (String.valueOf(temp));
       return decrypt;
   }


}

