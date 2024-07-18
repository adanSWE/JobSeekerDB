package JDBCAssessment2;

import java.sql.*;
import java.util.Scanner;

public class JDBCAssessment2 {
	public static void main(String[] args) {
		try {
			Scanner scanner = new Scanner(System.in);
			// Establish a connection
			String host = "jdbc:mysql://sample_hostaddress:";
			String port = "3306/";
			String DB = " sample_name"; // Database name
			String username = "sample_username"; // php username
			String password = "sample_password"; // php password
			String urlDB = host + port + DB; // creating url string
			Connection con = DriverManager.getConnection(urlDB, username, password); // establishing connection

			Statement stmt = con.createStatement(); // creating a statement object to store queries
			
			// Part 1: (displaying the records of a view: here the view I chose is: ListingsPerEmployer)
			// result is stored in a result set names rs.
			ResultSet rs = stmt.executeQuery("SELECT * FROM ListingsPerEmployer"); // after query is executed, it is stored in rs 
			while (rs.next()) {
				System.out.println(rs.getInt(1) + "   " + rs.getString(2)+ "  " + rs.getString(3));
			}
			
			
			System.out.println();
			System.out.println("Part 2: ");

			
			// Part 2: (inserting data in a table)
			// Creating arrays for each table in the database (to get the attributes of each table)
			String[] p_jobListings = {"listingID", "employerID", "positionID", "jobDescription", "jobRequirements", "jobLocation", "jobStatus", "postedDate"};
			String[] p_jobPositions = {"positionID", "positionName", "categoryID"};
			String[] p_jobCategories = {"categoryID", "categoryName"};
			String[] p_jobApplicants = {"applicantID", "firstName", "lastName", "email", "phoneNo", "skills", "CV"};
			String[] p_employers = {"employerID", "companyName", "companyEmail", "companyPhone", "companyStreet", "companyPostCode"};
			
			// Getting the table name from user
			System.out.print("Enter table name (p_jobListings/p_jobPositions/p_jobCategories/p_jobApplicants/p_employers): ");
			String tableName = scanner.nextLine(); // Storing the table name in a string reference called "tableName"
			String insert="INSERT INTO "+tableName+" ("; // Adding the table name to a string reference called insert
			
			switch(tableName) { // switching on the tableName
			case "p_jobListings": // If user Inputed table choice is p_jobListings
				// Going through the p_jobListings array to go through each attribute of the table
				for(int i =0; i< p_jobListings.length; i++) {
					if(i == p_jobListings.length-1) { // If its the last element (attribute) of the array, then format it differently
						insert += p_jobListings[i]+")";
					} else { // else, add a comma to add another attribute
						insert += p_jobListings[i]+", ";
					}
				}
				
				// Manually inserting the values (from user input)
				insert += " VALUES (";
				System.out.print("Enter listingID: ");
				String lID = scanner.nextLine();
				insert += lID+", ";
				
				// taking user input for employer ID
				System.out.print("Enter employerID: ");
				String empID = scanner.nextLine();
				insert += empID+", ";
				
				// taking user input for positionID
				System.out.print("Enter positionID: ");
				String posID = scanner.nextLine();
				insert += posID+", ";
				
				// taking user input for job description
				insert += "'";
				System.out.print("Enter jobDescription: ");
				String jobDesc = scanner.nextLine();
				insert += jobDesc+"', ";
				
				// taking user input for job requirements
				insert += "'";
				System.out.print("Enter jobRequirements: ");
				String jobReq = scanner.nextLine();
				insert += jobReq+"', ";
				
				// taking user inputs for job location (Remote/On-Site)
				insert += "'";
				System.out.print("Enter jobLocation: ");
				String jobLoc = scanner.nextLine();
				insert += jobLoc+"', ";
				
				// taking user inputs for job status (boolean)
				System.out.print("Enter jobStatus (0/1): ");
				String jobStat = scanner.nextLine();
				insert += jobStat+", ";
				
				// taking user input for job listing post date
				insert += "'";
				System.out.print("Enter postedDate (YYYY-MM-DD): ");
				String postedDate = scanner.nextLine();
				insert += postedDate+"')";
				
				// executing the string 'insert' (our finalized query)
				stmt.executeUpdate(insert);
				System.out.println("\nRecord added successfully!\n");
				break;
				
				
			case "p_jobPositions": // If user Inputed table choice is p_jobPositions
				// Going through the p_jobPositions array to go through each attribute of the table
				for(int i =0; i< p_jobPositions.length; i++) {
					if(i == p_jobPositions.length-1) {
						insert += p_jobPositions[i]+")";
					} else {
						insert += p_jobPositions[i]+", ";
					}
				}
				
				// Manually inserting the values (from user input)
				insert += " VALUES (";
				System.out.print("Enter positionID: ");
				String PositionslID = scanner.nextLine();
				insert += PositionslID+",";
				
				// taking user input for position name
				insert += "'";
				System.out.print("Enter positionName: ");
				String PositionsempID = scanner.nextLine();
				insert += PositionsempID+"', ";
				
				// taking user input for categoryID
				System.out.print("Enter categoryID: ");
				String PositionsposID = scanner.nextLine();
				insert += PositionsposID+")";
				
				// executing the string 'insert' (our finalized query)
				stmt.executeUpdate(insert);
				System.out.println("\nRecord added successfully!\n");
				break;
				
				
			case "p_jobCategories": // If user Inputed table choice is p_jobCategories
				// Going through the p_jobCategories array to go through each attribute of the table
				for(int i =0; i< p_jobCategories.length; i++) {
					if(i == p_jobCategories.length-1) {
						insert += p_jobCategories[i]+")";
					} else {
						insert += p_jobCategories[i]+", ";
					}
				}
				
				// Manually inserting the values (from user input)
				insert += " VALUES (";
				System.out.print("Enter categoryID: ");
				String CategoryID = scanner.nextLine();
				insert += CategoryID+",";
				
				// taking user input for category name
				insert += "'";
				System.out.print("Enter categoryName: ");
				String CategoryID1 = scanner.nextLine();
				insert += CategoryID1+"')";
				
				// executing the string 'insert' (our finalized query)
				stmt.executeUpdate(insert);
				System.out.println("\nRecord added successfully!\n");
				break;
				
				
			case "p_jobApplicants": // If user Inputed table choice is p_jobApplicants
				// Going through the p_jobApplicants array to go through each attribute of the table
				for(int i =0; i< p_jobApplicants.length; i++) {
					if(i == p_jobApplicants.length-1) {
						insert += p_jobApplicants[i]+")";
					} else {
						insert += p_jobApplicants[i]+", ";
					}
				}
				
				// Manually inserting the values (from user input)
				insert += " VALUES (";
				System.out.print("Enter applicantID: ");
				String ApplicantID = scanner.nextLine();
				insert += ApplicantID+",";
				
				// taking user input for applicant first name
				insert += "'";
				System.out.print("Enter Applicant First Name: ");
				String ApplicantFName = scanner.nextLine();
				insert += ApplicantFName+"', ";
				
				// taking user input for applicant last name
				insert += "'";
				System.out.print("Enter Applicant Last Name: ");
				String ApplicantLName = scanner.nextLine();
				insert += ApplicantLName+"', ";
				
				// taking user input for applicant email
				insert += "'";
				System.out.print("Enter Applicant email: ");
				String ApplicantEmail = scanner.nextLine();
				insert += ApplicantEmail+"', ";
				
				// taking user input for applicant phone number
				insert += "'";
				System.out.print("Enter Applicant Phone Number: ");
				String ApplicantNumber = scanner.nextLine();
				insert += ApplicantNumber+"', ";
				
				// taking user input for applicant skills
				insert += "'";
				System.out.print("Enter Applicant Skills: ");
				String ApplicantSkills = scanner.nextLine();
				insert += ApplicantSkills+"', ";
				
				// taking user input for applicant CV
				insert += "'";
				System.out.print("Enter Applicant CV (fileName): ");
				String ApplicantCV = scanner.nextLine();
				insert += ApplicantCV+"')";
	
				// executing the string 'insert' (our finalized query)
				stmt.executeUpdate(insert);
				System.out.println("\nRecord added successfully!\n");
				break;
				
				
			case "p_employers": // If user Inputed table choice is p_employers
				// Going through the p_employers array to go through each attribute of the table
				for(int i =0; i< p_employers.length; i++) {
					if(i == p_employers.length-1) {
						insert += p_employers[i]+")";
					} else {
						insert += p_employers[i]+", ";
					}
				}
				
				// Manually inserting the values (from user input)
				insert += " VALUES (";
				System.out.print("Enter employerID: ");
				String employerID = scanner.nextLine();
				insert += employerID+",";
				
				// taking user input for company name
				insert += "'";
				System.out.print("Enter Company Name: ");
				String companyName = scanner.nextLine();
				insert += companyName+"', ";
				
				// taking user input for company email
				insert += "'";
				System.out.print("Enter Company Email: ");
				String companyEmail = scanner.nextLine();
				insert += companyEmail+"', ";
				
				// taking user input for company phone number
				insert += "'";
				System.out.print("Enter Company Phone No.: ");
				String companyPhone = scanner.nextLine();
				insert += companyPhone+"', ";
				
				// taking user input for Company street
				insert += "'";
				System.out.print("Enter Company Street: ");
				String companySt = scanner.nextLine();
				insert += companySt+"', ";
				
				// taking user input for Company Post Code
				insert += "'";
				System.out.print("Enter Company PostCode: ");
				String companyPostCode = scanner.nextLine();
				insert += companyPostCode+"')";
	
				// executing the string 'insert' (our finalized query)
				stmt.executeUpdate(insert);
				System.out.println("\nRecord added successfully!\n");
				break;
			}
			
			stmt.close(); // Statement object is closed.
			con.close(); // Connection object is closed.

		} catch (Exception e) { // If exception is found, it is stored in variable 'e'
			System.out.println(e); // Printing out the exception from variable 'e'
		}
	}

}
