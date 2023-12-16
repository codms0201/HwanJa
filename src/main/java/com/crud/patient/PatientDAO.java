package com.crud.patient;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PatientDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertPatient(PatientVO vo) {
        return sqlSession.insert("Patient.insertPatient", vo);
    }
    // s는 앞에는 namespace, .찍고 id 이름, id는 board-mapper에 있다.

    public PatientVO getPatient(int seq){
        return sqlSession.selectOne("Patient.getPatient", seq);
    }

    public List<PatientVO> getPatientList(){
        return sqlSession.selectList("Patient.getPatientList");
    }

    public int deletePatient(int seq){
        return sqlSession.delete("Patient.deletePatient", seq);
    }
    public int updatePatient(PatientVO vo){
        return sqlSession.update("Patient.updatePatient", vo);
    }


}
