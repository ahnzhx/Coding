package org.zerock.domain;

public class LikeVO {
	private int lno;
	private int rno2;
	private String likeEmail;
	private boolean favorite;
	public int getLno() {
		return lno;
	}
	public void setLno(int lno) {
		this.lno = lno;
	}
	
	public int getRno2() {
		return rno2;
	}
	public void setRno2(int rno2) {
		this.rno2 = rno2;
	}
	public String getLikeEmail() {
		return likeEmail;
	}
	public void setLikeEmail(String likeEmail) {
		this.likeEmail = likeEmail;
	}
	public boolean isFavorite() {
		return favorite;
	}
	public void setFavorite(boolean favorite) {
		this.favorite = favorite;
	}
	@Override
	public String toString() {
		return "LikeVO [lno=" + lno + ", rno2=" + rno2 + ", likeEmail=" + likeEmail + ", favorite=" + favorite + "]";
	}


	
	
}
