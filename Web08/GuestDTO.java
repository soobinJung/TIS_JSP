package net.tis.sql;

public class GuestDTO {
   private int sabun;
   private String name;
   private String title;
   private java.util.Date wdate;
   private int pay, hit;
   private String email;
   
   //���ȣ,cnt  466������  java/java����,jsp/java����, java/��������
   private int rn,cnt;

	public int getSabun() {	return sabun;}
	public void setSabun(int sabun) {	this.sabun = sabun;	}

	public String getName() {	return name;	}
	public void setName(String name) {this.name = name;	}

	public String getTitle() {	return title;	}
	public void setTitle(String title) {this.title = title;	}

	public java.util.Date getWdate() {return wdate;	}
	public void setWdate(java.util.Date wdate) {this.wdate = wdate;}

	public int getPay() {	return pay;	}
	public void setPay(int pay) {	this.pay = pay;	}

	public int getHit() {	return hit;}
	public void setHit(int hit) {	this.hit = hit;	}

	public String getEmail() {	return email;	}
	public void setEmail(String email) {	this.email = email;	}

	public int getRn() {return rn;	}
	public void setRn(int rn) {	this.rn = rn;	}

	public int getCnt() {	return cnt;	}
	public void setCnt(int cnt) {	this.cnt = cnt;	}
   
}//class END








