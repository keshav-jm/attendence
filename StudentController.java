package com.attandance.smart_attendance_backend.controller;


import org.springframework.web.bind.annotation.*;

import java.util.List;

import com.attandance.smart_attendance_backend.entity.Student;
import com.attandance.smart_attendance_backend.service.StudentService;



@RestController
@RequestMapping("/student")

public class StudentController {


    private final StudentService studentService;


    public StudentController(StudentService studentService){
        this.studentService = studentService;
    }

@GetMapping("/{id}")
public Student getStudentById(@PathVariable Long id) {
    return studentService.getStudentById(id);
}

    // CREATE STUDENT
    @PostMapping
    public Student addStudent(@RequestBody Student student){

        return studentService.saveStudent(student);

    }



    // GET ALL STUDENTS
    @GetMapping
    public List<Student> getStudents(){

        return studentService.getAllStudents();

    }
    @DeleteMapping("/{id}")
    public String deleteStudent(@PathVariable Long id) {
        studentService.deleteStudent(id);
        return "Student deleted successfully";
    }

    @DeleteMapping
    public String deleteAllStudents() {
        studentService.deleteAllStudents();
        return "All students deleted successfully";
    }
    @PutMapping("/{id}")
    public Student updateStudent(@PathVariable Long id,
                                 @RequestBody Student student) {
        return studentService.updateStudent(id, student);
    }
    @GetMapping("/count")
public long countStudents() {
    return studentService.countStudents();
}
@PostMapping("/login")
public Student login(@RequestBody Student student) {

    return studentService.login(
            student.getEmail(),
            student.getPassword()
    );

}

}
