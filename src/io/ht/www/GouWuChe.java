package io.ht.www;

import java.util.*;



public class GouWuChe {
	static Map<CommodityBean,String > map=new HashMap<CommodityBean, String>();
	static GouWuChe che=new GouWuChe();
	private GouWuChe(){
		
	}
	
	public static GouWuChe getInstance (){
		
		return che;
	}
	
	
	public static Map<CommodityBean, String> getMap(){
		
		return map;
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	
}
