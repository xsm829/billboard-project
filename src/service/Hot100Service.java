package service;

import dao.Hot100Dao;
import model.Hot100;
import model.Page;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class Hot100Service {
    private Hot100Dao gDao=new Hot100Dao();
//    public Map<String,Object> getScrollGood()
//    {
//        Map<String,Object> scroolGood=null;
//        try {
//            scroolGood=gDao.getScrollGood();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return scroolGood;
//    }
    public Page getSearchGoodsPage(String keyword, int pageNumber) {
        Page p = new Page();
        p.setPageNumber(pageNumber);
        int totalCount = 0;
        try {
//			totalCount = gDao.getGoodsCount(typeId);
            totalCount = gDao.getSearchCount(keyword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.SetPageSizeAndTotalCount(8, totalCount);
        List list=null;
        try {
//			list = gDao.selectGoods(keyword, pageNo, 8);
            list = gDao.selectSearchGoods(keyword,pageNumber,8);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.setList(list);
        return p;
    }
    public void insert(Hot100 goods) {
        try {
            gDao.insert(goods);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void update(Hot100 goods) {
        try {
            gDao.update(goods);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void delete(int id) {
        try {
            gDao.delete(id);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
