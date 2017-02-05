package io.ht.www;

import java.util.Date;



public class CommodityBean {

	private int cid;
	private String cname;
	private float cprice;
	private float cnumber;
	private Date cquality;
	private String cimage;
	public int getCid() {
		return cid;
	}
	public String getCimage() {
		return cimage;
	}
	public void setCimage(String cimage) {
		this.cimage = cimage;
	}
	public CommodityBean(String cimage) {
		super();
		this.cimage = cimage;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public float getCprice() {
		return cprice;
	}
	public void setCprice(float cprice) {
		this.cprice = cprice;
	}
	public float getCnumber() {
		return cnumber;
	}
	public void setCnumber(float cnumber) {
		this.cnumber = cnumber;
	}
	public Date getCquality() {
		return cquality;
	}
	public void setCquality(Date cquality) {
		this.cquality = cquality;
	}
	
	public CommodityBean() {
		super();
	}
	@Override
	public String toString() {
		return "CommodityBean [cid=" + cid + ", cname=" + cname + ", cprice="
				+ cprice + ", cnumber=" + cnumber + ", cquality=" + cquality
				+ ", cimage=" + cimage + "]";
	}
	public CommodityBean(int cid, String cname, float cprice, float cnumber,
			Date cquality, String cimage) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cprice = cprice;
		this.cnumber = cnumber;
		this.cquality = cquality;
		this.cimage = cimage;
	}
	
	

}
