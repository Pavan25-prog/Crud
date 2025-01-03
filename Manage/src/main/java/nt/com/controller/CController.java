package nt.com.controller;



import java.util.Iterator;
import java.util.List;
import java.util.Map;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import nt.com.bean.EmpDeatils;
import nt.com.bean.LoginData;
import nt.com.repository.EmpDetailsRepository;
import nt.com.repository.ICrudRepository;
import nt.com.repository.SelectCrudRepository;
import nt.com.service.DoServices;

import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class CController {
	String  token;
	@Autowired
	 ICrudRepository epo;
	@Autowired
	EmpDetailsRepository edr;
	@Autowired
	 SelectCrudRepository scr;
	@Autowired
	DoServices ds;
	
	EmpDeatils a;
	@GetMapping("/")
	public String homePage() {
		return"home";
	}
	@PostMapping("/comma")
	public String checkLogin(@ModelAttribute LoginData c,Map<String,String> e) {
	     
		Optional<LoginData>o = epo.findByUsernameAndPass(c.getUsername(),c.getPass());
	
		if(o.isPresent())return "logged";
    
 	return "home";
  }
	@GetMapping("/homepage")
	public String homePage2() {
		return"logged";
	}
	@GetMapping("/insert")
	public String insert() {
		return"insert";
	}
	
	@PostMapping("/submit")
	public String DoSubmit(@ModelAttribute EmpDeatils ed ) {
		  token = ds.doVerifieyGmail(ed);
		  a=ed;
		  System.out.println("ggggggggggggggggggggggggggggggg");
		/*EmpDeatils a =   edr.save(ed);		
		
		m.put("es","Data Added succefully"+a.getId());
		 System.out.println("ddddddddddddd"+a.getId());
		  return"insert";*/
		  return "tokensent";
	}
	@GetMapping("/verify")
	public String doVerify(@RequestParam String token ,Map<String,String> m) {
		 System.out.println("cccccccccccccccccccccccccccccccc");
		if(token.equals(this.token)) {
		    edr.save(a);
		    this.token=null;
			m.put("es","Data Added succefully");
			return "datadded";
			}else
		return "error";
	}
     @GetMapping("/select")
     public String doShow(Map<String,Iterable<EmpDeatils>> m){
        Iterable<EmpDeatils> findall = scr.findAll();
    	m.put("iterable", findall);
        return "select";	 
     }
     @GetMapping("/delete")
     public String doDelete(@RequestParam int num){
         System.out.println(num);
    	 //int no= Integer.parseInt(num);
    	 scr.deleteById(num);
        return "forward:select";	 
     }
	 
	
}