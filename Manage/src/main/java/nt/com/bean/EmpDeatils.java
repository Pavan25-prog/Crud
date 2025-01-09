package nt.com.bean;
import java.time.LocalTime;

import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.SQLRestriction;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
@Entity
@Table(name="employee_details")
@Data
@SQLDelete(sql = "update employee_details set status='Inactive' where id=?")
@SQLRestriction(value = "status <> 'Inactive'")
public class EmpDeatils {
  
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String position;
	private String department;
	private String email;
	private long phone;
	private LocalTime expiry_date;
	private String pass;
	private String status ="Active";
	
}
