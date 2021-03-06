package cdelivery_demo_test;

import cdelivery_demo.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.fail;

public class ExecTest {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testDBFunctions()
	{
		Excercise ex = new Excercise();

		try {
			ex.RunDemoDBFunctions();
		}
		catch(Exception e) {
			fail("DemoDBFunctions Exception");
		}
	}

	@Test
	public void testProblem1()
	{
		Excercise ex = new Excercise();

		ex.RunDemoProblem1();
	}

	@Test
	public void testWebServiceCalls()
	{
		Excercise ex = new Excercise();

		ex.RunDemoWebServiceCalls();
	}

}
