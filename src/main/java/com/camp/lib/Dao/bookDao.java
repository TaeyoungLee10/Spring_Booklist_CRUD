package com.camp.lib.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.camp.lib.beans.book;

public class bookDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(book p) {
		String sql="insert into booklist(title,author,comment) values('"+p.getTitle()+"','"+p.getAuthor()+"','"+p.getComment()+"')";  
		return template.update(sql);
	}
	
	public int update(book p) {
		String sql="update booklist set title='"+p.getTitle()+"', author="+p.getAuthor()+",comment='"+p.getComment()+"' where id="+p.getId()+"";  
		return template.update(sql);
	}
	
	public int delete(int id) {
		String sql="delete from booklist where id="+id+"";
		return template.update(sql);
	}
	
	public book getbookById(int id) {
		String sql="select * from booklist where id=?";
		return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<book>(book.class));    
	}    
	
	public List<book> getEmployees(){    
	    return template.query("select * from booklist",new RowMapper<book>(){    
	        public book mapRow(ResultSet rs, int row) throws SQLException {    
	            book e=new book();    
	            e.setId(rs.getInt(1));    
	            e.setTitle(rs.getString(2));    
	            e.setAuthor(rs.getString(3));    
	            e.setComment(rs.getString(4));    
	            return e;    
	        }    
	    });    
	}    
	
	
	
}
