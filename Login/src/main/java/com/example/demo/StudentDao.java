package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentDao implements StudentService
{
	@Autowired
	StudentRepo sr;
	
	@Autowired
	LoginRepo lr;
	
	
	
	@Override
	public void getdata(Student ss) 
	{
		sr.save(ss);
	}

	@Override
	public List<Student> getinfo() {

		return sr.findAll();
	}

	@Override
	public void deletedata(int id) {
		sr.deleteById(id);
	}

	@Override
	public Student getsingledata(int id) {
		Student s = sr.getById(id);
		return s;
	}

	@Override
	public void updatedata(Student s1) {
		sr.save(s1);
	}

	@Override
	public Student getlogin(String email, String password) 
	{

		Student so = lr.findByemail(email);
		if(so==null || !so.getPassword().equals(password))
		{
			throw new IllegalArgumentException("Invalid");
		}
		return so;
	}

}
