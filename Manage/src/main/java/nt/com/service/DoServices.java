package nt.com.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import nt.com.bean.EmpDeatils;
import nt.com.repository.EmpDetailsRepository;
import nt.com.repository.ICrudRepository;
import nt.com.repository.JpaRepo;

import java.util.Optional;
@Service
public class DoServices {
      @Autowired
      private JavaMailSender jms; 
	   @Autowired
	   private JpaRepo jr;
	   @Autowired
		EmpDetailsRepository edr;
		
      public String doVerifieyGmail(EmpDeatils ed){
		 String tokenq = UUID.randomUUID().toString();  
		String subject = "Verify your email";
          String body = "Click the link to verify your email: aareooo vikassh vaa linkpe click karo " +
                  "http://localhost:8281/Mana/verify?token=" + tokenq;

          SimpleMailMessage message = new SimpleMailMessage();
          message.setTo(ed.getEmail());
          message.setSubject(subject);
          message.setText(body);
          jms.send(message);
		return tokenq;
	}
	
	public Optional<EmpDeatils> doCheckUser( EmpDeatils ed) {
		   Optional<EmpDeatils> op =  jr.findByEmailAndPass(ed.getEmail(), ed.getPass());
		
		   return op;
	} 
	public void doEdit(int no){
		Optional<EmpDeatils> op = edr.findById(no);
		
		edr.save(op.get());
	
	}

	public String doReset(String email) {
		 //Check email 
		Optional<EmpDeatils> op   =  jr.findByEmail(email);
		 if(op.isPresent()) {
			 
			 String subject = "Reset Email Passowrd ";
		        String body = "Reset email " +
		        		"http://localhost:8281/Mana/resetpass";

		          SimpleMailMessage message = new SimpleMailMessage();
		          message.setTo(email);
		          message.setSubject(subject);
		          message.setText(body);
		          jms.send(message);
		          return "sent";
		 }
		 
		//String tokenq = UUID.randomUUID().toString();  
			
			return "notsent";
	}
	
	public void doAddPassword(EmpDeatils ed) {
		System.out.println(ed.getEmail()+ed.getPass());
		jr.updateEmpDeatilsByGmail(ed.getEmail(),ed.getPass());
		 
	}
}
