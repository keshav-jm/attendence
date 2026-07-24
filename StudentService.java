package com.attandance.smart_attendance_backend.service;

import org.springframework.stereotype.Service;
import java.util.List;

import com.attandance.smart_attendance_backend.entity.Student;
import com.attandance.smart_attendance_backend.repository.StudentRepository;


@Service
public class StudentService {


    private final StudentRepository studentRepository;


    public StudentService(StudentRepository studentRepository){
        this.studentRepository = studentRepository;
    }



    public Student saveStudent(Student student){

        return studentRepository.save(student);

    }



    public List<Student> getAllStudents(){

        return studentRepository.findAll();

    }
    public void deleteStudent(Long id) {
        studentRepository.deleteById(id);
    }

    public void deleteAllStudents() {
        studentRepository.deleteAll();
    }
    public Student updateStudent(Long id, Student student) {
        student.setStudentId(id);
        return studentRepository.save(student);
    }
    public long countStudents() {
    return studentRepository.count();
}
public Student login(String email, String password) {
    return studentRepository
            .findByEmailAndPassword(email, password)
            .orElse(null);
}

public Student getStudentById(Long id) {
    return studentRepository.findById(id).orElse(null);
}
}