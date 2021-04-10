package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ssm.dao.UserDao;
import com.ssm.po.Com;
import com.ssm.po.Shop;
import com.ssm.po.Timeswatched;
import com.ssm.po.User;
import com.ssm.po.video;
//import com.ssm.po.Users;
import com.ssm.po.problem;
import com.ssm.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired // 自動注入
	private UserDao userDao;

	@Override
	public User login(User user) {
		return this.userDao.login(user);
	}

	@Override
	public void addUser(User user) {
		this.userDao.addUser(user);
	}

	@Override
	public Com findCommit(Com com) {
		return this.userDao.findCommit(com);
	}

	@Override
	public User encryption(User user) {
		return this.userDao.encryption(user);
	}

	@Override
	public void upUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.upUser(user);
	}

	@Override
	public void shop(Shop shop) {
		this.userDao.shop(shop);
		
	}

	@Override
	public User addUserCheckUser(User user) {
		return this.userDao.addUserCheckUser(user);
	}

	@Override
	public User addUserCheckidCard(User user) {
		// TODO Auto-generated method stub
		return this.userDao.addUserCheckidCard(user);
	}

	@Override
	public User upUserSelect(User user) {
		// TODO Auto-generated method stub
		return this.userDao.upUserSelect(user);
	}

	@Override
	public List<Shop> select(Shop shop) {
		// TODO Auto-generated method stub
		return this.userDao.select(shop);
	}

	@Override
	public void temporarystorage(Shop shop) {
			this.userDao.temporarystorage(shop);
		
	}

	@Override
	public void problemrequest(problem problem){
		this.userDao.problemrequest(problem);
		
	}
	@Override
	public List<Shop> selects(Shop shop) {
		return this.userDao.selects(shop);
	}

	@Override
	public List<Shop> selectss(Shop shop) {
		return this.userDao.selectss(shop);
	}

	@Override
	public void upselect(Shop shop) {
		this.userDao.upselect(shop);
		
	}

	@Override
	public List<problem> presponse(problem problem) {
		return this.userDao.presponse(problem);
	}

	@Override
	public void problemresponse(problem problem) {
		this.userDao.problemresponse(problem);
	}

	@Override
	public List<problem> presponsereceive(problem proble) {
		
		return this.userDao.presponsereceive(proble);
	}

	@Override
	public List<video> videos(video video){

		return this.userDao.videos(video);
	}

	@Override
	public Timeswatched look(Timeswatched time) {
		
		return this.userDao.look(time);
	}

	@Override
	public void lookupdate(Timeswatched time) {
		this.userDao.lookupdate(time);
	}





}
