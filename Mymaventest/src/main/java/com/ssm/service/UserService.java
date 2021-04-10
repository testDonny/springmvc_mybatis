package com.ssm.service;

import java.util.List;

import com.ssm.po.Com;
import com.ssm.po.Shop;
import com.ssm.po.Timeswatched;
import com.ssm.po.User;
import com.ssm.po.video;
//import com.ssm.po.Users;
import com.ssm.po.problem;


public interface UserService {
	public User login(User user);
	public List<problem>presponsereceive(problem proble);
	public void  problemresponse(problem problem);
	public User addUserCheckUser(User user);
	public User addUserCheckidCard(User user);
	public void addUser(User user);
	public Com findCommit(Com com);
	public User encryption(User user);
	public void upUser(User user);
	public void shop(Shop shop);
	public List<Shop> select(Shop shop);
	public void problemrequest(problem problem);
	public void temporarystorage(Shop shop);
	public List<Shop> selects(Shop shop);
	public User upUserSelect(User user);
	public List<Shop> selectss(Shop shop);
	public void upselect(Shop shop);
	public List<problem> presponse(problem problem);
	public List<video> videos(video video);
	
	public Timeswatched look(Timeswatched time);
	public void lookupdate(Timeswatched time);
	
//	public List<Users> userList(Users user);
//	public management newcard(User user);
//	public void update(User user);
//	public User updateselectusername(User user);
//	public User updateselectidcard(User user);
//	public void updatepassword(User user);
//	public void add(Users user);
//	public List<Users> list();

}
