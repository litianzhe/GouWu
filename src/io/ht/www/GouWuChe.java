package io.ht.www;

import java.util.*;



public class GouWuChe {
	static Map<CommodityBean,Integer > map=new HashMap<CommodityBean, Integer>();
	static GouWuChe che=new GouWuChe();
	private GouWuChe(){
		
	}
	
	public static GouWuChe getInstance (){
		
		return che;
	}
	
	
	public static Map<CommodityBean, Integer> getMap(){
		
		return map;
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	
}
