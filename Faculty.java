package com.attandance.smart_attendance_backend.entity;

import jakarta.persistence.*;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name="faculty")
public class Faculty {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="faculty_id")
    private Long facultyId;


    @Column(name="name")
    private String name;


    @Column(name="email")
    private String email;


    @Column(name="password")
    private String password;


    @Column(name="department")
    private String department;


    @Column(name="phone")
    private String phone;



    // One faculty can handle many subjects

    @JsonIgnore
@OneToMany(mappedBy="faculty")
private List<Subject> subjects;


    // Default constructor

    public Faculty(){

    }



    // Getters and Setters


    public Long getFacultyId() {
        return facultyId;
    }


    public void setFacultyId(Long facultyId) {
        this.facultyId = facultyId;
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


    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password;
    }


    public String getDepartment() {
        return department;
    }


    public void setDepartment(String department) {
        this.department = department;
    }


    public String getPhone() {
        return phone;
    }


    public void setPhone(String phone) {
        this.phone = phone;
    }


    public List<Subject> getSubjects() {
        return subjects;
    }


    public void setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }
}