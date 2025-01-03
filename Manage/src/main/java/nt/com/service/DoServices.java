package nt.com.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import nt.com.bean.EmpDeatils;

@Service
public class DoServices {
      @Autowired
      private JavaMailSender jms; 
	public String doVerifieyGmail(EmpDeatils ed){
		 String tokenq = UUID.randomUUID().toString();  
		String subject = "Verify your email";
          String body = "Click the link to verify your email: aareooo vikassh vaa linkpe click karo " +
                  "http://localhost:8589/Manage/verify?token=" + tokenq;

          SimpleMailMessage message = new SimpleMailMessage();
          message.setTo(ed.getEmail());
          message.setSubject(subject);
          message.setText(body);
          jms.send(message);
		return tokenq;
	}
}
