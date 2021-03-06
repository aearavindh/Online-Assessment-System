<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hibernate Assessment</title>
</head>
<body bgcolor="cyan">
<h2><b>Hibernate Assessment</b></h2><br>
<hr>
<form action="/submit_hibernate">
<label><b>Question 1: What is the full form of ORM?</b></label><br>
<input type="radio" id="Q1-Opt1" name="Question1" value="Object Random Memory" required>
<label for="Q1-Opt1">Object Random Memory</label><br>
<input type="radio" id="Q1-Opt2" name="Question1" value="Object Relational Mismatch" required>
<label for="Q1-Opt2">Object Relational Mismatch</label><br>
<input type="radio" id="Q1-Opt3" name="Question1" value="Object Relational Mapping" required>
<label for="Q1-Opt3">Object Relational Mapping</label><br>
<input type="radio" id="Q1-Opt4" name="Question1" value="Object Random Mapping" required>
<label for="Q1-Opt4">Object Random Mapping</label><br><br>
<label><b>Question 2: In Hibernate, based on directionality, what could be the mappings?</b></label><br>
<input type="radio" id="Q2-Opt1" name="Question2" value="uni-directional & bi-directional" required>
<label for="Q2-Opt1">uni-directional & bi-directional</label><br>
<input type="radio" id="Q2-Opt2" name="Question2" value="one-to-many & many-to-one" required>
<label for="Q2-Opt2">one-to-many & many-to-one</label><br>
<input type="radio" id="Q2-Opt3" name="Question2" value="inheritance mapping" required>
<label for="Q2-Opt3">inheritance mapping</label><br>
<input type="radio" id="Q2-Opt4" name="Question2" value="north & south mapping" required>
<label for="Q2-Opt4">north & south mapping</label><br><br>
<label><b>Question 3: In an Hibernate application, which file would have datasource details?</b></label><br>
<input type="radio" id="Q3-Opt1" name="Question3" value="hibernate mapping file" required>
<label for="Q3-Opt1">hibernate mapping file</label><br>
<input type="radio" id="Q3-Opt2" name="Question3" value="configuration file" required>
<label for="Q3-Opt2">configuration file</label><br>
<input type="radio" id="Q3-Opt3" name="Question3" value="Model/Entity class" required>
<label for="Q3-Opt3">Model/Entity class</label><br>
<input type="radio" id="Q3-Opt4" name="Question3" value="HibernateUtil class" required>
<label for="Q3-Opt4">HibernateUtil class</label><br><br>
<label><b>Question 4: What is the full form of HQL?</b></label><br>
<input type="radio" id="Q4-Opt1" name="Question4" value="High-level Query Language" required>
<label for="Q4-Opt1">High-level Query Language</label><br>
<input type="radio" id="Q4-Opt2" name="Question4" value="Hidden Query Language" required>
<label for="Q4-Opt2">Hidden Query Language</label><br>
<input type="radio" id="Q4-Opt3" name="Question4" value="Hibernate Query Language" required>
<label for="Q4-Opt3">Hibernate Query Language</label><br>
<input type="radio" id="Q4-Opt4" name="Question4" value="Hibernate Quadratic Language" required>
<label for="Q4-Opt4">Hibernate Quadratic Language</label><br><br>
<label><b>Question 5: In an Hibernate application, concurrency can be controlled by setting?</b></label><br>
<input type="radio" id="Q5-Opt1" name="Question5" value="concurrency level" required>
<label for="Q5-Opt1">concurrency level</label><br>
<input type="radio" id="Q5-Opt2" name="Question5" value="one-to-one mapping" required>
<label for="Q5-Opt2">one-to-one mapping</label><br>
<input type="radio" id="Q5-Opt3" name="Question5" value="many-to-one bi-directional mapping" required>
<label for="Q5-Opt3">many-to-one bi-directional mapping</label><br>
<input type="radio" id="Q5-Opt4" name="Question5" value="isolation levels" required>
<label for="Q5-Opt4">isolation levels</label><br><br><br>
<input type="submit" id="submithibernate" value="Submit Test" />
</form>
</body>
</html>