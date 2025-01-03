package nt.com.bean;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Data
@Entity
@Table(name="Login")
public class LoginData {
   @Id
   @GeneratedValue
   private Integer id;
   private String username;
   private String pass;
   
}
