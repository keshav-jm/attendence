package com.attandance.smart_attendance_backend.entity;

import jakarta.persistence.*;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonIgnore;



@Entity
@Table(name="student")
public class Student {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="student_id")
    private Long studentId;


    @Column(name="name")
    private String name;


    @Column(name="email")
    private String email;


    @Column(name="roll_no")
    private String rollNo;


    @Column(name="department")
    private String department;


    @Column(name="year")
    private int year;


    @Column(name="semester")
    private int semester;

     @ManyToMany
@JoinTable(
    name = "student_subject",
    joinColumns = @JoinColumn(name = "student_id"),
    inverseJoinColumns = @JoinColumn(name = "subject_id")
)
private List<Subject> subjects;

public List<Subject> getSubjects() {
    return subjects;
}

public void setSubjects(List<Subject> subjects) {
    this.subjects = subjects;
}

    // One student can have many attendance records

    @JsonIgnore
@OneToMany(mappedBy = "student")
private List<Attendance> attendance;
    @Column(name = "password")
private String password;

    // Default constructor
    public Student(){

    }



    // Getters and Setters


    public Long getStudentId() {
        return studentId;
    }


    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }


    public String getName() {
        return name;
    }


    public void setName(String name) {
        this.name = name;
    }


    public String getEmail() {
        return email;
    }


    public void setEmail(String email) {
        this.email = email;
    }


    public String getRollNo() {
        return rollNo;
    }


    public void setRollNo(String rollNo) {
        this.rollNo = rollNo;
    }


    public String getDepartment() {
        return department;
    }


    public void setDepartment(String department) {
        this.department = department;
    }


    public int getYear() {
        return year;
    }


    public void setYear(int year) {
        this.year = year;
    }


    public int getSemester() {
        return semester;
    }


    public void setSemester(int semester) {
        this.semester = semester;
    }


    public List<Attendance> getAttendance() {
        return attendance;
    }


    public void setAttendance(List<Attendance> attendance) {
        this.attendance = attendance;
    }
    public String getPassword() {
    return password;
}

public void setPassword(String password) {
    this.password = password;
}
}