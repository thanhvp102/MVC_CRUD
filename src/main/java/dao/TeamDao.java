package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import model.Team;
import util.SQLquery;

public class TeamDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int insert(Team p) {	
		return template.update(SQLquery.INSERT,new Object[] {p.getTeamname(),p.getCoachname(),p.getNationalname()});
	}


	public int update(Team p) {	
		return template.update(SQLquery.UPDATE,new Object[] {p.getTeamname(),p.getCoachname(),p.getNationalname(),p.getId()});
	}

	public int delete(int id) {		
		return template.update(SQLquery.DELETE,new Object[] {id});
	}

	public Team getTeamById(int id) {
		String sql = "select * from TEAM where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Team>(Team.class));
	}

	public List<Team> getTeam() {
		return template.query(SQLquery.SELECT, new RowMapper<Team>() {
			public Team mapRow(ResultSet rs, int row) throws SQLException {
				Team e = new Team();
				e.setId(rs.getInt(1));
				e.setTeamname(rs.getString(2));
				e.setCoachname(rs.getString(3));
				e.setNationalname(rs.getString(4));
				return e;
			}
		});
	}
	public List<Team> divideTeam() {
		List<Team> list= template.query(SQLquery.SELECT, new RowMapper<Team>() {
			public Team mapRow(ResultSet rs, int row) throws SQLException {
				Team e = new Team();
				e.setId(rs.getInt(1));
				e.setTeamname(rs.getString(2));
				e.setCoachname(rs.getString(3));
				e.setNationalname(rs.getString(4));
				return e;
			}
		});
		Collections.sort(list,new Comparator<Team>() {

			public int compare(Team t1, Team t2) {
				// TODO Auto-generated method stub
				return t1.getTeamname().compareTo(t2.getTeamname());
			}
		});
      return list;
       
	}
}
