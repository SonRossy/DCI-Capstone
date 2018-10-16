

import org.junit.Assert.*;

import org.junit.After;
import org.junit.Assert;
import org.junit.Test;
import com.model.Member;

public class Testing {

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		Member m = new Member();
		Assert.assertEquals(m.getUserEmail(), null);
		System.out.println("PRINT THIS HERE! HELLO WORLD!!!!!!");
	}

}
