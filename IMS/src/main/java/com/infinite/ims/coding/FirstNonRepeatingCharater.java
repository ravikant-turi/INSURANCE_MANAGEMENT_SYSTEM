package com.infinite.ims.coding;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class FirstNonRepeatingCharater {
	
	public static void main(String[] args) {
		String str="programing";
		
		
//		System.out.println(solve1(str));
		
		System.out.println(solve2(str));
	}
	
	
	public static char solve2(String str) {
		
		HashMap<Character,Integer> mp=new LinkedHashMap<>();
		
		for(int i=0;i<str.length();i++) {
			
			char ch=str.charAt(i);
			mp.put(ch,mp.getOrDefault(ch, 0)+1);
		}
		
		Iterator<Map.Entry<Character, Integer>> it=mp.entrySet().iterator();
		
		while(it.hasNext()) {
			Map.Entry<Character, Integer>entry=it.next();
			
			if(entry.getValue()==1) {
				return entry.getKey();
			}
		}
		
		
		
		
		
		return ' ';
	}
	public static char solve1(String str) {
		
		
		int [] mp=new int[26];
		
		System.out.println(Arrays.toString(mp));
		
		for(int i=0;i<str.length();i++) {
			
			char ch=str.charAt(i);
			
			mp[ch-'a']++;
		}
		
		
		for(int i=0;i<str.length();i++) {
			char ch=str.charAt(i);
			if(mp[ch-'a']==1) {
				return  ch;
			}
		}
		
		System.out.println(Arrays.toString(mp));
		
		
		return ' ';
		
	}
	

}
