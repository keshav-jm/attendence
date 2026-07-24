package com.attandance.smart_attendance_backend.repository;


import com.attandance.smart_attendance_backend.entity.Attendance;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AttendanceRepository 
        extends JpaRepository<Attendance, Long> {


}
