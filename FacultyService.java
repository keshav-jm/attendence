package com.attandance.smart_attendance_backend.service;


import org.springframework.stereotype.Service;
import java.util.List;

import com.attandance.smart_attendance_backend.entity.Faculty;
import com.attandance.smart_attendance_backend.repository.FacultyRepository;



@Service
public class FacultyService {


    private final FacultyRepository facultyRepository;



    public FacultyService(FacultyRepository facultyRepository){

        this.facultyRepository = facultyRepository;

    }



    public Faculty saveFaculty(Faculty faculty){

        return facultyRepository.save(faculty);

    }



    public List<Faculty> getAllFaculty(){

        return facultyRepository.findAll();

    }
     public void deleteFaculty(Long id) {
        facultyRepository.deleteById(id);
    }

    public void deleteAllFaculty() {
        facultyRepository.deleteAll();
    }
    public Faculty updateFaculty(Long id, Faculty faculty) {
        faculty.setFacultyId(id);
        return facultyRepository.save(faculty);
    }
    public Faculty login(String email, String password) {

    return facultyRepository
            .findByEmailAndPassword(email, password)
            .orElse(null);

}
public long countFaculty() {
    return facultyRepository.count();
}



}