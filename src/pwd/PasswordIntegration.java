package pwd;
import java.nio.charset.StandardCharsets;

public class PasswordIntegration {

	public static void main(String[] args) {
		Password encryption1 = new Password(9,334,'q');
		//password123$%^&((((!!!!!!#$%^^^98hn--++1234@34999990@#$%?/.,
		String encrpyt1 = encryption1.encode("Hannah*$%#![]{}");
		BasicCryptoTest encryption2 = new BasicCryptoTest(StandardCharsets.UTF_8, 6);
		String encrypt2 = encryption2.encrypt(encrpyt1);
		pwdEncrypt encryption3 = new pwdEncrypt(2);
		String encrypt3 = encryption3.encrypt(encrypt2);
		System.out.println(encrpyt1);
		System.out.println(encrypt2); 
		System.out.println(encrypt3);
		
		System.out.println(encryption3.decrypt(encrypt3));
		System.out.println(encryption2.decrypt(encrypt2));
		System.out.println(encryption1.decode(encrpyt1));
		
	}

}
