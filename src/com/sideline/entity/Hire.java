package com.sideline.entity;

public class Hire {
	private String id;
	private String unitid;
	private String unit;
	private String unitusername;
	private String seekerid;
	private String seekerusername;
	private String unitremark;
	private String seekerremark;
	private String finish;



	public Hire(String id, String unitid, String unit, String unitusername, String seekerid, String seekerusername,
			String unitremark, String seekerremark,String finish) {
		this.id = id;
		this.unitid = unitid;
		this.unit = unit;
		this.unitusername = unitusername;
		this.seekerid = seekerid;
		this.seekerusername = seekerusername;
		this.unitremark = unitremark;
		this.seekerremark = seekerremark;
		this.finish=finish;

	}
	public Hire(String unitid, String unit, String unitusername, String seekerid, String seekerusername,
			String unitremark, String seekerremark, String finish) {
		super();
		this.unitid = unitid;
		this.unit = unit;
		this.unitusername = unitusername;
		this.seekerid = seekerid;
		this.seekerusername = seekerusername;
		this.unitremark = unitremark;
		this.seekerremark = seekerremark;
		this.finish = finish;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUnitid() {
		return unitid;
	}

	public void setUnitid(String unitid) {
		this.unitid = unitid;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getUnitusername() {
		return unitusername;
	}

	public void setUnitusername(String unitusername) {
		this.unitusername = unitusername;
	}

	public String getSeekerid() {
		return seekerid;
	}

	public void setSeekerid(String seekerid) {
		this.seekerid = seekerid;
	}

	public String getSeekerusername() {
		return seekerusername;
	}

	public void setSeekerusername(String seekerusername) {
		this.seekerusername = seekerusername;
	}

	public String getUnitremark() {
		return unitremark;
	}

	public void setUnitremark(String unitremark) {
		this.unitremark = unitremark;
	}

	public String getSeekerremark() {
		return seekerremark;
	}

	public void setSeekerremark(String seekerremark) {
		this.seekerremark = seekerremark;
	}
	public String getFinish() {
		return finish;
	}
	public void setFinish(String finish) {
		this.finish = finish;
	}
	@Override
	public String toString() {
		return "Hire [id=" + id + ", unitid=" + unitid + ", unit=" + unit + ", unitusername=" + unitusername
				+ ", seekerid=" + seekerid + ", seekerusername=" + seekerusername + ", unitremark=" + unitremark
				+ ", seekerremark=" + seekerremark + "]";
	}
	
}
