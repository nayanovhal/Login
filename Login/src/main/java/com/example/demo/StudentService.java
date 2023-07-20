package com.example.demo;

import java.util.List;

public interface StudentService
{
	void getdata(Student ss);
	
	List<Student> getinfo();
	
	void deletedata(int id);
	
	Student getsingledata(int id);
	
	void updatedata(Student ss);
	
	Student getlogin(String email, String password);

}
