package com.attandance.smart_attendance_backend.controller;


import org.springframework.web.bind.annotation.*;

import java.util.List;


import com.attandance.smart_attendance_backend.entity.Attendance;
import com.attandance.smart_attendance_backend.service.AttendanceService;



@RestController
@RequestMapping("/attendance")
@CrossOrigin(origins = "http://localhost:5173")
public class AttendanceController {



    private final AttendanceService attendanceService;



    public AttendanceController(AttendanceService attendanceService){

        this.attendanceService = attendanceService;

    }





    // CREATE ATTENDANCE

    @PostMapping
    public Attendance addAttendance(@RequestBody Attendance attendance){

        return attendanceService.saveAttendance(attendance);

    }






    // GET ALL ATTENDANCE

    @GetMapping
    public List<Attendance> getAttendance(){

        return attendanceService.getAllAttendance();

    }
     @DeleteMapping("/{id}")
    public String deleteAttendance(@PathVariable Long id) {
        attendanceService.deleteAttendance(id);
        return "Attendance deleted successfully";
    }

    @DeleteMapping
    public String deleteAllAttendance() {
        attendanceService.deleteAllAttendance();
        return "All attendance deleted successfully";
    }
    @GetMapping("/{id}")
public Attendance getAttendanceById(@PathVariable Long id) {
    return attendanceService.getAttendanceById(id);
}
@PutMapping("/{id}")
public Attendance updateAttendance(
        @PathVariable Long id,
        @RequestBody Attendance attendance) {

    return attendanceService.updateAttendance(id, attendance);
}



}