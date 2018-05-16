/**
 * StudentController
 * Copyright (c) 2017, FastBridge Learning LLC
 * Created on 11/16/17
 */
package org.fastbridge.takehome.controller;

import org.fastbridge.takehome.data.service.SchoolClassService;
import org.fastbridge.takehome.data.service.SchoolService;
import org.fastbridge.takehome.data.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author vivek
 */
@Controller
public class StudentController {

    private final SchoolService schoolService;
    private final StudentService studentService;
    private final SchoolClassService schoolClassService;
    public int schoolId;

    @Autowired
    public StudentController(SchoolService schoolService, StudentService studentService, SchoolClassService schoolClassService) {
        this.schoolService = schoolService;
        this.studentService = studentService;
        this.schoolClassService = schoolClassService;
        this.schoolId = -999;
    }

    @GetMapping("/students")
    public String getStudentListings(ModelMap model) {
        model.put("schools", schoolService.getAllSchools());
        model.put("students", studentService.getAllStudents());
        model.put("classes", schoolClassService.getAllSchoolClasses());
        model.addAttribute("schoolId",schoolId);
        return "studentListings";
    }

}
