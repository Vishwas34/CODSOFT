package com.admin;

import java.sql.Connection;
import com.admin.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO implements StudentDAOImpl{

	private Connection conn;
	public StudentDAO(Connection conn) {
		super();
		this.conn=conn;
	}

	
	


	@Override
	public boolean addStudent(Student s) {
		
		boolean f=false;
		try
		{
			String sql="insert into student(name,dob,address,qualification,email) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, s.getName());
			ps.setString(2, s.getDob());
			ps.setString(3, s.getAddress());
			ps.setString(4, s.getQualifiaction());
			ps.setString(5, s.getEmail());
			
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}


	@Override
	public List<Student> getAllStudent() {
		List<Student> list=new ArrayList<Student>();
        Student s=null;
        try
        {
        	String sql="select * from student";
        	PreparedStatement ps=conn.prepareStatement(sql);
        	
        	ResultSet rs=ps.executeQuery();
        	while(rs.next())
        	{
        	s=new Student();
        	s.setId(rs.getInt(1));
        	s.setName(rs.getString(2));
        	s.setDob(rs.getString(3));
        	s.setAddress(rs.getString(4));
        	s.setQualifiaction(rs.getString(5));
        	s.setEmail(rs.getString(6));
        	list.add(s);
        	
        	}
        }
        catch(Exception e)
        {
        	e.printStackTrace();
        }
		
		 return list;
	}


	@Override
	public Student getStudentById(int id) {
		Student s=null;
		try
		{
			String sql="select * from student where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				s=new Student();
				s.setId(rs.getInt(1));
	        	s.setName(rs.getString(2));
	        	s.setDob(rs.getString(3));
	        	s.setAddress(rs.getString(4));
	        	s.setQualifiaction(rs.getString(5));
	        	s.setEmail(rs.getString(6));
	        	
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;
		
	}


	@Override
	public boolean EditStudent(Student b) {
		boolean f=false;
		try
		{
			String sql="update student set name=?,dob=?,address=?,qualification=?,email=? where id=?";
		    PreparedStatement ps=conn.prepareStatement(sql);
		    ps.setString(1, b.getName());
		    ps.setString(2, b.getDob());
		    ps.setString(3, b.getAddress());
		    ps.setString(4, b.getQualifiaction());
		    ps.setString(5, b.getEmail());
		    ps.setInt(6,b.getId());
		    int i=ps.executeUpdate();
		    if(i==1)
		    {
		    	f=true;
		    }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}


	@Override
	public boolean deleteStudent(int id) {
		boolean f=false;
		try
		{
			String sql="delete from student where id=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
					
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}


	
	


	
	
	

}
