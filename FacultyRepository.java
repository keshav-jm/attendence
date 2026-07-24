package com.attandance.smart_attendance_backend.repository;


import com.attandance.smart_attendance_backend.entity.Faculty;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


public interface FacultyRepository 
        extends JpaRepository<Faculty, Long> {
                Optional<Faculty> findByEmailAndPassword(String email, String password);


}

