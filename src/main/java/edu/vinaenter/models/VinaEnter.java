package edu.vinaenter.models;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class VinaEnter {

	int id;
	String place;
	Date date_create;
	int student;
}
