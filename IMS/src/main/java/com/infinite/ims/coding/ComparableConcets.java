package com.infinite.ims.coding;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

class Student implements Comparable<Student> {
    int roll;
    String name;

    public Student(int roll, String name) {
        this.roll = roll;
        this.name = name;
    }

    @Override
    public int compareTo(Student s) {
        return this.name.compareTo(s.name);  // Ascending order of roll
    }

	@Override
	public String toString() {
		return "Student [roll=" + roll + ", name=" + name + "]";
	}
    
    
    
}
public class ComparableConcets{
	
	public static void main(String[] args) {
		
		ArrayList<Student> stdList=new ArrayList<Student>();
		
		
		Student s1=new Student(3, "aravi3");
		Student s2=new Student(2, "bravi2");
		Student s3=new Student(1, "cravi1");
		
		stdList.add(s3);
		stdList.add(s2);
		stdList.add(s1);
		
		stdList.forEach(System.out::println);

		
	}
	
}


