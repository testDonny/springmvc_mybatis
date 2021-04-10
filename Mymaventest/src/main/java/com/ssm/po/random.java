package com.ssm.po;

//隨機產生驗證碼
public class random {
	private int random;


	public int getRandom() {
		random = (int) (Math.random() * 100000);
		return random;
	}

	
}
