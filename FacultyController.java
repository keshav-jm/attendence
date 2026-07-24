package com.attandance.smart_attendance_backend.controller;


import org.springframework.web.bind.annotation.*;

import java.util.List;

import com.attandance.smart_attendance_backend.entity.Faculty;
import com.attandance.smart_attendance_backend.service.FacultyService;



@RestController
@RequestMapping("/faculty")

public class FacultyController {


    private final FacultyService facultyService;



    public FacultyController(FacultyService facultyService){

        this.facultyService = facultyService;

    }

    



    // CREATE FACULTY

    @PostMapping
    public Faculty addFaculty(@RequestBody Faculty faculty){

        return facultyService.saveFaculty(faculty);

    }




    // GET ALL FACULTY

    @GetMapping
    public List<Faculty> getFaculty(){

        return facultyService.getAllFaculty();

    }
     @DeleteMapping("/{id}")
    public String deleteFaculty(@PathVariable Long id) {
        facultyService.deleteFaculty(id);
        return "Faculty deleted successfully";
    }

    @DeleteMapping
    public String deleteAllFaculty() {
        facultyService.deleteAllFaculty();
        return "All faculty deleted successfully";
    }
    @PutMapping("/{id}")
    public Faculty updateFaculty(@PathVariable Long id,
                                 @RequestBody Faculty faculty) {
        return facultyService.updateFaculty(id, faculty);
    }
    @PostMapping("/login")
public Faculty login(@RequestBody Faculty faculty) {

    return facultyService.login(
            faculty.getEmail(),
            faculty.getPassword()
    );
}
@GetMapping("/count")
public long countFaculty() {
    return facultyService.countFaculty();
}

}
