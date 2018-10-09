package pwd;

/*
 * Team 2 :
 * Rojan Pradham, Caroline Kops, Sasha Edwards
 */
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;


public class BasicCryptoTest{
	
	Charset charSet;

	public BasicCryptoTest(Charset charSet, int radix) {
		// TODO = radix is not used right now, planning to implement base64 encoding 
		this.charSet = StandardCharsets.UTF_8;
		
	}
	
		public BasicCryptoTest() {
		// TODO Auto-generated constructor stub
	}

		protected String encrypt(String password) {
		byte[] data = password.getBytes(charSet);		// creating an array with the same length :

		byte[] encryptArray = new byte[data.length];

		byte[] encryptArray2 = new byte[data.length];

		byte[] outputArray = new byte[data.length * 2];



		for (int i = 0; i < data.length; i++) {

			encryptArray[i] = (byte) ((i % 2 == 0) ? data[i] + 1 : data[i] - 1);



			encryptArray2[i] = (byte) ((i % 2 == 0) ? data[i] + 5 : data[i] - 5);

		}

		// copy encryptArray into start of destination (from pos 0, copy

		//encryptArray.length bytes)

		System.arraycopy(encryptArray, 0, outputArray, 0, encryptArray.length);



		// copy encryptArray2 into end of destination (from pos encryptArray.length,

		// copy encryptArray2.length bytes)

		System.arraycopy(encryptArray2, 0, outputArray, encryptArray.length, encryptArray2.length);
		
		String encPass = new String(outputArray);
		
		return encPass;

	}

	protected String decrypt(String encPassword) {
		byte[] data = encPassword.getBytes();
		// creating an array with the same length :
		//toString(byte, radix)
		byte[] slicedArray = Arrays.copyOfRange(data, 0, data.length / 2);

		byte[] outputArray = new byte[slicedArray.length];

		for (int i = 0; i < slicedArray.length; i++) {

			outputArray[i] = (byte) ((i % 2 == 0) ? data[i] - 1 : data[i] + 1);

		}
		String decPass = new String(outputArray, charSet);
		return decPass;

	}

	public static void main(String[] args) {

		String password = "HANNAH KELLY IS AWESOME911**";

		System.out.println("Encrypted password :" + password);
		


		BasicCryptoTest crypt = new BasicCryptoTest();
		
		//String encPass = new String(crypt.encrypt(password.getBytes()));

		System.out.println("Encrypted password :" + crypt.encrypt(password));



		String decPass = new String(crypt.decrypt(crypt.encrypt(password)));


		System.out.println("Decrypted password :" + decPass);

	}

}
