package org.zerock.domain;

public class RoomVO {
	private int rno;
	private String addr1;
	private String addr2;
	private double room_type;
	private int floor1;
	private int floor2;
	private int roomsize;
	private String lease_type;
	private int cost1;
	private int cost2;
	private String title;
	private int like;
	private int mg;
	private String img;
	
	
	
	public int getMg() {
		return mg;
	}
	public void setMg(int mg) {
		this.mg = mg;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	
	public int getFloor1() {
		return floor1;
	}
	public void setFloor1(int floor1) {
		this.floor1 = floor1;
	}
	public int getFloor2() {
		return floor2;
	}
	public void setFloor2(int floor2) {
		this.floor2 = floor2;
	}
	public int getRoomsize() {
		return roomsize;
	}
	public void setRoomsize(int roomsize) {
		this.roomsize = roomsize;
	}
	public int getCost1() {
		return cost1;
	}
	public void setCost1(int cost1) {
		this.cost1 = cost1;
	}
	public int getCost2() {
		return cost2;
	}
	public void setCost2(int cost2) {
		this.cost2 = cost2;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public double getRoom_type() {
		return room_type;
	}
	public void setRoom_type(double room_type) {
		this.room_type = room_type;
	}
	public String getLease_type() {
		return lease_type;
	}
	public void setLease_type(String lease_type) {
		this.lease_type = lease_type;
	}
	@Override
	public String toString() {
		return "RoomVO [rno=" + rno + ", addr1=" + addr1 + ", addr2=" + addr2 + ", room_type=" + room_type + ", floor1="
				+ floor1 + ", floor2=" + floor2 + ", roomsize=" + roomsize + ", lease_type=" + lease_type + ", cost1="
				+ cost1 + ", cost2=" + cost2 + ", title=" + title + ", like=" + like + ", img=" + img + "]";
	}
	
	
	
	
}
