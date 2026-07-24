package com.attandance.smart_attendance_backend.controller;


import org.springframework.web.bind.annotation.*;

import java.util.List;


import com.attandance.smart_attendance_backend.entity.Subject;
import com.attandance.smart_attendance_backend.service.SubjectService;



@RestController
@RequestMapping("/subject")

public class SubjectController {



    private final SubjectService subjectService;



    public SubjectController(SubjectService subjectService){

        this.subjectService = subjectService;

    }





    // CREATE SUBJECT

    @PostMapping
    public Subject addSubject(@RequestBody Subject subject){

        return subjectService.saveSubject(subject);

    }






    // GET ALL SUBJECTS

    @GetMapping
    public List<Subject> getSubjects(){

        return subjectService.getAllSubjects();

    }
    @DeleteMapping("/{id}")
public String deleteSubject(@PathVariable Long id) {

    subjectService.deleteSubject(id);

    return "Subject deleted successfully";
}
@DeleteMapping
public String deleteAllSubjects() {
    subjectService.deleteAllSubjects();
    return "All subjects deleted";
}
@PutMapping("/{id}")
    public Subject updateSubject(@PathVariable Long id,
                                 @RequestBody Subject subject) {
        return subjectService.updateSubject(id, subject);
    }
    @GetMapping("/count")
public long countSubjects() {
    return subjectService.countSubjects();
}


}
