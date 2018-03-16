package com.rk.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.rk.dao.UserCertifDao;
import com.rk.entity.UserCertif;

@Repository("userCertifDao")
public class UserCertifDaoImpl implements UserCertifDao {
	
	@Autowired
	JdbcTemplate jdbct;
	
	@Override
	public Integer add(UserCertif userCertif) {
		String sql = "insert into t_usercertif(userid,state,cardpath)values(?,?,?)";
		Integer rs = jdbct.update(sql, userCertif.getUserid(),userCertif.getState(),userCertif.getCardpath());
		return rs;
	}

	@Override
	public Integer deleteById(Integer id) {
		String sql ="delete from t_usercertif where id=?";
		Integer rs = jdbct.update(sql,id);
		return rs;
	}

	@Override
	public Integer deleteByUserId(Integer userId) {
		String sql ="delete from t_usercertif where userid=?";
		Integer rs = jdbct.update(sql,userId);
		return rs;
	}

	@Override
	public Integer update(UserCertif userCertif) {
		String sql = "update t_usercertif set state=?,cardpath=? where id=?";
		Integer rs = jdbct.update(sql,userCertif.getState(),userCertif.getCardpath(),userCertif.getId());
		return rs;
	}

	@Override
	public UserCertif selectById(Integer id) {
		String sql = "select * from t_usercertif where id=?";
		RowMapper<UserCertif> rowMapper = new BeanPropertyRowMapper<>(UserCertif.class);
		UserCertif userCertif = jdbct.queryForObject(sql, rowMapper, id);
		return userCertif;
	}

	@Override
	public UserCertif selectByUserId(Integer userId) {
		String sql = "select * from t_usercertif where userid=?";
		RowMapper<UserCertif> rowMapper = new BeanPropertyRowMapper<>(UserCertif.class);
		UserCertif userCertif = jdbct.queryForObject(sql, rowMapper, userId);
		return userCertif;
	}

}
