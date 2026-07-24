package com.attandance.smart_attendance_backend.service;


import org.springframework.stereotype.Service;
import java.util.List;

import com.attandance.smart_attendance_backend.entity.Attendance;
import com.attandance.smart_attendance_backend.repository.AttendanceRepository;



@Service
public class AttendanceService {


    private final AttendanceRepository attendanceRepository;



    public AttendanceService(AttendanceRepository attendanceRepository){

        this.attendanceRepository = attendanceRepository;

    }



    public Attendance saveAttendance(Attendance attendance){

        return attendanceRepository.save(attendance);

    }



    public List<Attendance> getAllAttendance(){

        return attendanceRepository.findAll();

    }
    public void deleteAttendance(Long id) {
        attendanceRepository.deleteById(id);
    }

    public void deleteAllAttendance() {
        attendanceRepository.deleteAll();
    }
    public Attendance getAttendanceById(Long id) {
    return attendanceRepository.findById(id).orElse(null);
}

public Attendance updateAttendance(Long id, Attendance updatedAttendance) {

    Attendance attendance = attendanceRepository.findById(id).orElse(null);

    if (attendance != null) {

        attendance.setStudent(updatedAttendance.getStudent());
        attendance.setSubject(updatedAttendance.getSubject());
        attendance.setTotalClasses(updatedAttendance.getTotalClasses());
        attendance.setAttendedClasses(updatedAttendance.getAttendedClasses());
        attendance.setAttendancePercentage(updatedAttendance.getAttendancePercentage());
        attendance.setLastUpdated(updatedAttendance.getLastUpdated());

        return attendanceRepository.save(attendance);
    }

    return null;
}


}