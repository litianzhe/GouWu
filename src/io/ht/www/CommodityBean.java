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
	@Override
	public int hashCode() {
		return cid;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CommodityBean other = (CommodityBean) obj;
		if (cid != other.cid)
			return false;
		if (cimage == null) {
			if (other.cimage != null)
				return false;
		} else if (!cimage.equals(other.cimage))
			return false;
		if (cname == null) {
			if (other.cname != null)
				return false;
		} else if (!cname.equals(other.cname))
			return false;
		if (Float.floatToIntBits(cnumber) != Float
				.floatToIntBits(other.cnumber))
			return false;
		if (Float.floatToIntBits(cprice) != Float.floatToIntBits(other.cprice))
			return false;
		if (cquality == null) {
			if (other.cquality != null)
				return false;
		} else if (!cquality.equals(other.cquality))
			return false;
		return true;
	}
	
	

}
