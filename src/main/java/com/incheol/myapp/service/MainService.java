package com.incheol.myapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.incheol.myapp.dao.Boarddao;
import com.incheol.myapp.dao.Categorydao;
import com.incheol.myapp.dao.Userdao;
import com.incheol.myapp.vo.Board;
import com.incheol.myapp.vo.Category;
import com.incheol.myapp.vo.User;
import com.incheol.myapp.vo.customized_board;
import com.incheol.myapp.vo.customized_user;

@Service
public class MainService {
	
	@Resource(name="Categorydao")  
	private Categorydao categorydao; 
	
	@Resource(name="Boarddao")  
	private Boarddao boarddao;
	
	@Resource(name="UserDao")  
	private Userdao userdao; 
	
	//to get category list
	public List<Category> Load_Category(){
		return categorydao.getcategorylist();
	}
	
	//to get newest_board list
	public List<Board> Load_newest_board_list(int newest_num){
		return boarddao.get_newest_boardlist(newest_num);
	}
	
	//to get best_board list
	public List<Board> Load_best_board_list(int best_num){
		return boarddao.get_best_boardlist(best_num);
	}
	
	//to get best_user list
	public List<customized_user> Load_best_user_list(int best_num){
		return userdao.get_Best_userlist(best_num);
	}
}
