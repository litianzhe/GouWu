package io;

import java.util.HashMap;
import java.util.Map;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Map<Integer,Integer> map=new HashMap<Integer, Integer>();
		map.put(1, 1);
		map.put(1, 2);
		map.put(1, 3);
		map.put(4, 4);
		map.put(2, 4);
		System.out.println(map);
		
	}

}
