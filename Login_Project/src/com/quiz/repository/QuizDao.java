package com.quiz.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common_things.DB_Connection;

public class QuizDao {
	public static ResultSet getQuiz(String subject) throws SQLException{
		Connection conn= DB_Connection.getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from quizques where subname=?");
		ps.setString(1, subject);
		ResultSet result=ps.executeQuery();
		System.out.println(ps);
		return result;
	}
}
