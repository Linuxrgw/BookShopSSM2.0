/**  
* <p>Title: RoomBiz.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年10月30日  
* @version 1.0  
*/
package com.icss.dkgy.biz;

import java.sql.SQLException;
import java.util.ArrayList;

import com.icss.dkgy.dao.RoomDao;
import com.icss.dkgy.entity.RoomEntity;
import com.icss.dkgy.util.ResultPage;

/**  
 * @Title: RoomBiz
 * @Description:
 * @author 任广伟
 * @createTime 2018年10月30日下午3:17:26
 */
public class RoomBiz {

	
	RoomDao dao = new RoomDao();
	
	
   
	/**  
	 * @Title: searchText
	 * @Description:
	 * @author 任广伟
	 * @param string
	 * @return  
	 * @date 2018年10月30日下午4:14:42
	 */
	//通过搜索框查询房源信息
	public ArrayList<RoomEntity> searchText(String text) {
		ArrayList<RoomEntity> rooms = null;
		try {
			rooms = dao.searchText(text); //调用dao层
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}
		
		return rooms;
	}



	/**
	 * 查看所有房源信息
	 */
	public ArrayList<RoomEntity> findAllRoom() {
		ArrayList<RoomEntity> rooms = null;
		try {
			rooms = dao.findAllRoom();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}
		return rooms;
	}










	/**
	 *分页后台查询所有房屋信息
	 */
	public void getPageInfo(ResultPage<RoomEntity> page) {
		try {
			 //1.获取每页展示的数据：每页展示的条数   起始条数   1-10    2  11-20
			int pagesize = 3; //每页显示的条数
			int startPage = (page.getCurrentPage()-1)*pagesize;   //起始条数的规律  （当前页-1）*每页显示条数
			//查询分页数据,并且把数据set到page对象中
			ArrayList<RoomEntity> rooms = dao.getRoomInfo(startPage,pagesize);
			page.setList(rooms);
			
			//2.总条数，并且把数据set到page对象中
			int totalCount = dao.selectCount(); 
			page.setTotalCount(totalCount);
			
			//3.计算总页数：计算规律：总条数%每页显示条数==0？总条数/每页显示条数:总条数/每页显示条数+1
			int totalPage =  totalCount%pagesize==0?totalCount/pagesize:totalCount/pagesize+1;
			page.setTotalPage(totalPage);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dao.closeConnection();
		}
		
	}




	/**  
	 * @Title: findRoomDetail
	 * @Description: 房屋详情
	 * @author 任广伟
	 * @param parseInt
	 * @return  
	 * @date 2018年11月3日下午6:54:17
	 */
	public ArrayList<RoomEntity> findRoomDetail(int roomid) {
		ArrayList<RoomEntity> rooms = null;
		try {
			rooms = dao.findRoomDetail(roomid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}
		return rooms;
		
	}



	/**  
	 * @Title: collectRoom
	 * @Description:  收藏房屋操作
	 * @author 任广伟
	 * @param parseInt
	 * @param phone
	 * @return  
	 * @date 2018年11月7日下午12:00:56
	 */
	public int collectRoom(int roomid, String phone) {
		int flag = 0 ;
		try {
			flag = dao.findCollect(roomid,phone);	//查询是否收藏
			if(flag==1){
				flag=dao.addCollect(roomid,phone);  // flag =1如果未收藏，添加收藏
			}else if(flag==2) {
				flag=dao.delectCollect(roomid,phone);// flag=2 如果已收藏，取消收藏
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}

		
		return flag;
	}



	/**  
	 * @Title: findCollectRoom
	 * @Description:获取用户收藏的房源信息
	 * @author 任广伟
	 * @param phone
	 * @return  
	 * @date 2018年11月9日上午11:30:09
	 */
	public ArrayList<RoomEntity> findCollectRoom(String phone) {
		ArrayList<RoomEntity> rooms = null;
		try {
			rooms = dao.findCollectRoom(phone);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}
		return rooms;
	}



	/**
	 * 管理员添加房源
	 */
	public int addRoom(RoomEntity room) {
		int c = 0;
		try {
			c = dao.addRoom(room);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}
		
		return c;
	}



	/**
	 * 管理员删除房源信息
	 */
	public int delRooms(String[] roomnums) {
		int flag = 0;
		try {
			//手动开启事务
			dao.beginTransaction();
			flag = dao.delRooms(roomnums);
			//成功一起提交
			dao.commit();
		} catch (Exception e) {
			try {
				dao.rollback();  //失败一起回滚
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			dao.closeConnection();
		}
		return flag;
	}



	/**
	 * 管理员查询部分房源信息
	 */
	public void getPageInfo(ResultPage<RoomEntity> page, String address, int typeid, String status) {
		try {
			 //1.获取每页展示的数据：每页展示的条数   起始条数   1-3    2  4-6
			int pagesize = 3; //每页显示的条数
			int startPage = (page.getCurrentPage()-1)*pagesize;   //起始条数的规律  （当前页-1）*每页显示条数
			//查询分页数据,并且把数据set到page对象中
			ArrayList<RoomEntity> rooms = dao.getRoomInfoBack(startPage,pagesize,address,typeid,status);
			page.setList(rooms);
			
			//2.总条数，并且把数据set到page对象中
			int totalCount = dao.selectRoomCount(address,typeid,status); 
			page.setTotalCount(totalCount);
			
			//3.计算总页数：计算规律：总条数%每页显示条数==0？总条数/每页显示条数:总条数/每页显示条数+1
			int totalPage =  totalCount%pagesize==0?totalCount/pagesize:totalCount/pagesize+1;
			page.setTotalPage(totalPage);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dao.closeConnection();
		}
		
		
	}



	/**
	 * 删除单条房源信息
	 */
	public void delRooms(String roomnum) {
		try {
			dao.delRoom(roomnum);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}
		
	}


}
