package dao;

import model.Hot100;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class Hot100Dao {
    //select g.id,g.name,g.cover,g.price,t.name typename from recommend r,goods g,type t where type=2 and r.goods_id=g.id and g.type_id=t.id
    public int getSearchCount(String keyword) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select count(*) from hot100 where title like ?";
        return r.query(sql, new ScalarHandler<Long>(),"%"+keyword+"%").intValue();
    }
    public List<Hot100> selectSearchGoods(String keyword, int pageNumber, int pageSize) throws SQLException{
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from hot100 where title like ? limit ?,?";
        return r.query(sql, new BeanListHandler<Hot100>(Hot100.class),"%"+keyword+"%",(pageNumber-1)*pageSize,pageSize);
    }

    public void insert(Hot100 g) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "insert into hot100(rank,title,singer) values(?,?,?)";
        r.update(sql,g.getRank(),g.getTitle(),g.getSinger());
    }
    public void update(Hot100 g) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "update hot100 set rank=?,title=?,singer=? where rank=?";
        r.update(sql,g.getRank(),g.getTitle(),g.getSinger());
    }
    public void delete(int rank) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "delete from hot100 where rank = ?";
        r.update(sql,rank);
    }
}
