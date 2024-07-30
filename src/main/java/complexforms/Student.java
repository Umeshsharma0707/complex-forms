package complexforms;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Student {
	private String name;
	private Long contact;
	
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	private Date dob;
	private String course;
	private String gender;
	private String studentType;
	private Address address;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStudentType() {
		return studentType;
	}
	public void setStudentType(String studentType) {
		this.studentType = studentType;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", contact=" + contact + ", dob=" + dob + ", course=" + course + ", gender="
				+ gender + ", studentType=" + studentType + ", address=" + address + "]";
	}
	
	
}
