package com.attandance.smart_attendance_backend.entity;

import jakarta.persistence.*;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="subject")
public class Subject {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="subject_id")
    private Long subjectId;



    @Column(name="subject_name")
    private String subjectName;



    @Column(name="subject_code")
    private String subjectCode;



    @ManyToOne
    @JoinColumn(name="faculty_id")
    private Faculty faculty;

    @ManyToMany(mappedBy = "subjects")
private List<Student> students;

public List<Student> getStudents() {
    return students;
}

public void setStudents(List<Student> students) {
    this.students = students;
}

    // One subject can have many attendance records

    @JsonIgnore
@OneToMany(mappedBy = "subject")
private List<Attendance> attendance;


    // Default constructor

    public Subject(){

    }



    // Getters and Setters


    public Long getSubjectId() {
        return subjectId;
    }


    public void setSubjectId(Long subjectId) {
        this.subjectId = subjectId;
    }


    public String getSubjectName() {
        return subjectName;
    }


    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }


    public String getSubjectCode() {
        return subjectCode;
    }


    public void setSubjectCode(String subjectCode) {
        this.subjectCode = subjectCode;
    }


    public Faculty getFaculty() {
        return faculty;
    }


    public void setFaculty(Faculty faculty) {
        this.faculty = faculty;
    }


    public List<Attendance> getAttendance() {
        return attendance;
    }


    public void setAttendance(List<Attendance> attendance) {
        this.attendance = attendance;
    }
}