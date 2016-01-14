package cdelivery_demo;

import java.sql.*;


public class Excercise {

	public void RunDemoDBFunctions()
	{
		// This code will be for RunDemo
		Connection conn = null;

		try {
			String dbHost = getEnvOrDefault("DB_HOSTNAME", "localhost");
			String dbBase = getEnvOrDefault("DB_DATABASE", "cdelivery_demo_db");
			String dbUser = getEnvOrDefault("DB_USERNAME", "dynatrace");
			String dbPass = getEnvOrDefault("DB_PASSWORD", "!dynatrace");

			DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
			conn =
			DriverManager.getConnection(String.format("jdbc:mysql://%s:3306/%s?" +
				"user=%s&password=%s", dbHost, dbBase, dbUser, dbPass));

			// Do something with the Connection
			Statement stmt = conn.createStatement();
			ResultSet rs;

			rs = stmt.executeQuery("SELECT * FROM demo_table");
			while( rs.next() )
			{
				String fullname = rs.getString("Name");
				System.out.println(fullname);
			}
			conn.close();

		} catch (SQLException ex) {
			// handle any errors
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("SQLState: " + ex.getSQLState());
			System.out.println("VendorError: " + ex.getErrorCode());
		}
	}

	public void RunDemoWebServiceCalls()
	{
		// This code will call Services
	}

	public String RunDemoProblem1()
	{
		return "true";
	}

	private static String getEnvOrDefault(String envParam, String defaultValue)
	{
		return System.getenv(envParam) != null ? System.getenv(envParam) : defaultValue;
	}
}
