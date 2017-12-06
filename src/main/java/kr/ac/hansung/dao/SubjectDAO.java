package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Subject;


@Repository
public class SubjectDAO {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int getRowCount() {
		String sqlStatement = "select count(*)from subjects";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}

	// query and return a single object
	public Subject getSubject(String name) {
		String sqlStatement = "select * from subjects where name=?";

		return jdbcTemplate.queryForObject(sqlStatement, new Object[] { name }, new RowMapper<Subject>() {
			public Subject mapRow(ResultSet rs, int rowNum) throws SQLException {

				Subject subject = new Subject();
				subject.setCode(rs.getString("code"));
				subject.setName(rs.getString("name"));
				subject.setGrade(rs.getInt("grade"));
				subject.setYear(rs.getInt("year"));
				subject.setDivide(rs.getString("divide"));
				subject.setSemester(rs.getInt("semester"));

				return subject;
			}
		});
	}

	// query and return a multi objects
	public List<Subject> getSubjects() {
		String sqlStatement = "select * from subjects";

		return jdbcTemplate.query(sqlStatement, new RowMapper<Subject>() {
			public Subject mapRow(ResultSet rs, int rowNum) throws SQLException {

				Subject subject = new Subject();

				subject.setCode(rs.getString("code"));
				subject.setName(rs.getString("name"));
				subject.setGrade(rs.getInt("grade"));
				subject.setYear(rs.getInt("year"));
				subject.setDivide(rs.getString("divide"));
				subject.setSemester(rs.getInt("semester"));

				return subject;
			}
		});
	}
	public boolean insert(Subject subject) {
		
		String code = subject.getCode();
		String name = subject.getName();
		int year = subject.getYear();
		int semester = subject.getSemester();
		int grade = subject.getGrade();
		String divide = subject.getDivide();
		
		String sqlStatement = "insert into subjects (code,name,year,semester,grade,divide) values (?,?,?,?,?,?)";
		return (jdbcTemplate.update(sqlStatement, new Object[] {code,name,year,semester,grade,divide})==1);
	}
	
}
