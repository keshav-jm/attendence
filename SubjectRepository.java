package com.attandance.smart_attendance_backend.repository;


import com.attandance.smart_attendance_backend.entity.Subject;
import org.springframework.data.jpa.repository.JpaRepository;


public interface SubjectRepository 
        extends JpaRepository<Subject, Long> {


}
