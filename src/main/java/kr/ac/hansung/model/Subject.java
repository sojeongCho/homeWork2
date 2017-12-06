package kr.ac.hansung.model;

import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Subject {
	
	private int year;
	
	private int semester;
	
	@Size(min=7, max=7,message="Code must be 7 chars")
	private String code;
	
	@Size(min=2, max=100,message="Name must be between 2 and 100 chars")
	private String name;
	
	@Size(min=2, max=8,message="Divide must be between 2 and 8 chars")
	private String divide;
	
	private int grade;
	
}
