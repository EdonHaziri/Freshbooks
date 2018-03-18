package model;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import bean.BookReviewBean;

public class BookReviewDAO {
	
	private Connection conn;
	
	/*
	 * @returns a list of book reviews for a given book bid in the form of BookReviewBeans
	 */
	public List<BookReviewBean> retrieveBookReviews(int bid) throws SQLException {
		List<BookReviewBean> reviews = new ArrayList<BookReviewBean>();
		String query = "select * from book_review where bid=? order by reviewdate";
		
		try {
			conn = DatabaseConnector.getDatabaseConnection();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		PreparedStatement p = conn.prepareStatement(query);
		p.setInt(1, bid);
		ResultSet r = p.executeQuery();
		
		while(r.next()) {
			String reviewText = r.getString("REVIEWTEXT"); 
			String username = r.getString("USERNAME");
			int rating = r.getInt("RATING");
			Date reviewDate = r.getDate("REVIEWDATE");
			BookReviewBean b = new BookReviewBean(bid, reviewText, username, rating, reviewDate);
			reviews.add(b);
		}
		
		conn.close();
		p.close();
		r.close();
		
		return reviews;
	}
	
	/*
	 * returns a book review based on its rid (pk for table book_review)
	 */
	public BookReviewBean retrieveBookReview(int rid) throws SQLException {
		String query = "select * from book_review where rid=?";
		BookReviewBean b = null;
		
		try {
			conn = DatabaseConnector.getDatabaseConnection();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		PreparedStatement p = conn.prepareStatement(query);
		p.setInt(1, rid);
		ResultSet r = p.executeQuery();
		
		if (r.next()) {
			int bid = r.getInt("BID");
			String reviewText = r.getString("REVIEWTEXT"); 
			String username = r.getString("USERNAME");
			int rating = r.getInt("RATING");
			Date reviewDate = r.getDate("REVIEWDATE");
			b = new BookReviewBean(bid, reviewText, username, rating, reviewDate);
		}
		
		conn.close();
		p.close();
		r.close();
		
		return b;
	}
	
	/*
	 * Adds a new review for a book through a BookReviewBean object
	 * which contains the bid
	 */
	public void addReview(BookReviewBean b) throws SQLException {
		List<BookReviewBean> reviews = new ArrayList<BookReviewBean>();
		String statement = "insert into book_review(bid, username, reviewtext, rating, reviewdate) values (?,?,?,?,?)";
		
		try {
			conn = DatabaseConnector.getDatabaseConnection();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		PreparedStatement p = conn.prepareStatement(statement);
		p.setInt(1, b.getBid());
		p.setString(2, b.getUsername());
		p.setString(3, b.getReviewText());
		p.setBigDecimal(4, new BigDecimal(b.getRating()));
		p.setDate(5, b.getReviewDate());
		p.execute();
		
		conn.close();
		p.close();
	}
	
	/*
	 * removes a review based on the book_review primary key rid
	 */
	public void removeReview(int rid) throws SQLException {
		String statement = "delete from book_review where rid=?";
		
		try {
			conn = DatabaseConnector.getDatabaseConnection();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		PreparedStatement p = conn.prepareStatement(statement);
		p.setInt(1, rid);
		p.execute();
		
		conn.close();
		p.close();
	}
	
}
