package com.admin;

import java.util.List;

public interface StudentDAOImpl {
	public boolean addStudent(Student s);
	public List<Student> getAllStudent();
	public Student getStudentById(int id);
	public boolean EditStudent(Student b);
	public boolean deleteStudent(int id);

}
