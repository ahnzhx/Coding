package org.zerock.domain;

public class mapVO {
	private int bno;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	private double x;
	private double y;
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	@Override
	public String toString() {
		return "mapVO [bno=" + bno + ", x=" + x + ", y=" + y + "]";
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
}
