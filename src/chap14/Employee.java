package chap14;

import java.time.LocalDateTime;

public class Employee {
	private int eno;
	private String ename;
	private LocalDateTime hiredate;
	private int salary;
	private String dname;
	private String job;
	private int grade;
	private String mName;
	
	public void setEno(int eno) {
		this.eno = eno;
	}
	public int getEno() {
		return eno;
	}
	
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEname() {
		return ename;
	}
	
	
	public void setHiredate(LocalDateTime hiredate) {
		this.hiredate = hiredate;
	}
	public LocalDateTime getHiredate() {
		return hiredate;
	}
	
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getSalary() {
		return salary;
	}
	
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDname() {
		return dname;
	}
	
	public void setJob(String job) {
		this.job = job;
	}
	public String getJob() {
		return job;
	}
	
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getGrade() {
		return grade;
	}
	
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmName() {
		return mName;
	}
	
	
}
