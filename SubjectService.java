
package com.attandance.smart_attendance_backend.service;


import org.springframework.stereotype.Service;
import java.util.List;

import com.attandance.smart_attendance_backend.entity.Subject;
import com.attandance.smart_attendance_backend.repository.SubjectRepository;



@Service
public class SubjectService {


    private final SubjectRepository subjectRepository;



    public SubjectService(SubjectRepository subjectRepository){

        this.subjectRepository = subjectRepository;

    }



    public Subject saveSubject(Subject subject){

        return subjectRepository.save(subject);

    }



    public List<Subject> getAllSubjects(){

        return subjectRepository.findAll();

    }
     public void deleteSubject(Long id) {
        subjectRepository.deleteById(id);
    }
    public void deleteAllSubjects() {
    subjectRepository.deleteAll();
}
public Subject updateSubject(Long id, Subject subject) {
        subject.setSubjectId(id);
        return subjectRepository.save(subject);
    }
    public long countSubjects() {
    return subjectRepository.count();
}



}