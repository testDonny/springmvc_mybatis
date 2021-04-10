package com.ssm.dao;

import java.util.List;

import com.ssm.po.Com;
import com.ssm.po.Shop;
import com.ssm.po.Timeswatched;
import com.ssm.po.User;
import com.ssm.po.video;

import com.ssm.po.problem;

public interface UserDao {
	public User login(User user);
	public User addUserCheckUser(User user);

	public List<Shop> selects(Shop shop);
	public List<Shop> selectss(Shop shop);
	public void addUser(User user);
	public Com findCommit(Com com);
	public User encryption(User user);
	public void upUser(User user);
	public void shop(Shop shop);
	public List<Shop> select(Shop shop);
	public void temporarystorage(Shop shop);
	
	public User upUserSelect(User user);
	public void problemrequest(problem problem);
	public void upselect(Shop shop);
	
	public List<problem>presponsereceive(problem proble);

	public List<problem> presponse(problem problem);
	public void  problemresponse(problem problem);

	public User addUserCheckidCard(User user);
	public List<video> videos(video video);
	public Timeswatched look(Timeswatched time);
	public void lookupdate(Timeswatched time);

}
