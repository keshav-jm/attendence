package com.attandance.smart_attendance_backend.repository;


import com.attandance.smart_attendance_backend.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface StudentRepository 
        extends JpaRepository<Student, Long> {
        Optional<Student> findByEmailAndPassword(String email, String password);

}

