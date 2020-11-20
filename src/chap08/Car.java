package chap08;

import java.io.Serializable;

public class Car implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String name;
	private int speed;
	
	// stop property(읽기 전용, only get(is) = isStop()) : 필드는 없지만 property가 생긴 것.
	// property는 메소드에 의해 생김. !!!!!
	public boolean isStop() {
		return speed == 0;
	}
	
	// name property
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	// speed property
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
}
