package com.crud.patient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PatientController {
    @Autowired
    PatientService patientService;

    @RequestMapping(value="/")
    public String home(){
        return "home";
    }
    @RequestMapping(value = "/patient/list", method = RequestMethod.GET)
    public String patientlist(Model model){
        model.addAttribute("list", patientService.getPatientList());
        return "list";
    }
    @RequestMapping(value = "/patient/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }
    @RequestMapping(value = "/patient/addok", method =RequestMethod.POST)
    public String addPostOK(PatientVO vo){
        if(patientService.insertPatient(vo) == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }
    @RequestMapping(value = "/patient/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
       PatientVO patientVO = patientService.getPatient(id);
        model.addAttribute("boardVO", patientVO);
        return "editform";
    }
    @RequestMapping(value = "/patient/editok", method = RequestMethod.POST)
    public String editPostOk(PatientVO vo) {
        if(patientService.updatePatient(vo) == 0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list" ;
    }
    @RequestMapping(value = "/patient/view/{id}", method = RequestMethod.GET)
    public String view(@PathVariable("id") int id, Model model){
        PatientVO patientVO = patientService.getPatient(id);
        model.addAttribute("patientVO", patientVO);
        return "view";
    }
    @RequestMapping(value = "patient/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id) {
        if(patientService.deletePatient(id)== 0)
            System.out.println("데이터 삭제 실패 ");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}
