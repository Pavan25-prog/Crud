package nt.com.repository;
import nt.com.bean.*;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ICrudRepository extends JpaRepository<LoginData,Integer> {
  
	public Optional<LoginData>  findByUsernameAndPass(String username1,String pass2);
	//public Optional<EmpDeatils> findByEmailAndPass(String username1,String pass2);
}
