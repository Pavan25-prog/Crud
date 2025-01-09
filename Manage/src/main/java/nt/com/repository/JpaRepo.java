package nt.com.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import jakarta.transaction.Transactional;
import nt.com.bean.EmpDeatils;

public interface JpaRepo extends JpaRepository<EmpDeatils,Integer>{
	
public Optional<EmpDeatils> findByEmailAndPass(String username1,String pass2);
public Optional<EmpDeatils> findByEmail(String email1);


@Transactional
@Modifying
@Query(value="Update employee_details ed Set ed.pass = :pass where ed.email = :email",nativeQuery=true)
public void updateEmpDeatilsByGmail(@Param("email") String email,@Param("pass") String pass);
}
