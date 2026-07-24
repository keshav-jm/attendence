package com.attandance.smart_attendance_backend.entity;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.math.BigDecimal;


@Entity
@Table(name="attendance")
public class Attendance {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="attendance_id")
    private Long attendanceId;



    @ManyToOne
    @JoinColumn(name="student_id")
    private Student student;



    @ManyToOne
    @JoinColumn(name="subject_id")
    private Subject subject;



    @Column(name="attendance_percentage")
    private BigDecimal attendancePercentage;



    @Column(name="total_classes")
    private int totalClasses;



    @Column(name="attended_classes")
    private int attendedClasses;



    @Column(name="last_updated")
    private LocalDate lastUpdated;



    // Default constructor
    public Attendance(){

    }


    // Getters and Setters

    public Long getAttendanceId() {
        return attendanceId;
    }

    public void setAttendanceId(Long attendanceId) {
        this.attendanceId = attendanceId;
    }


    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }


    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }


    public BigDecimal getAttendancePercentage() {
        return attendancePercentage;
    }

    public void setAttendancePercentage(BigDecimal attendancePercentage) {
        this.attendancePercentage = attendancePercentage;
    }


    public int getTotalClasses() {
        return totalClasses;
    }

    public void setTotalClasses(int totalClasses) {
        this.totalClasses = totalClasses;
    }


    public int getAttendedClasses() {
        return attendedClasses;
    }

    public void setAttendedClasses(int attendedClasses) {
        this.attendedClasses = attendedClasses;
    }


    public LocalDate getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(LocalDate lastUpdated) {
        this.lastUpdated = lastUpdated;
    }
}