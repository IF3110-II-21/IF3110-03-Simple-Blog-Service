/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package undeclared.mavenproject1;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Gilang
 */
public class Post {
	
	int id;
	String title;
	String content;
	String date;
	boolean published;
	boolean deleted;
	
	public Post(){
		
	}
	
	public Post(int postid, String title, String content, String date, boolean published, boolean deleted){
		id = postid;
		this.title = title;
		this.content = content;
		this.date = date;
		this.published = published;
		this.deleted = deleted;
	}
	
	public int getId(){
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public String getDate() {
		return date;
	}
	
	public boolean isPublished(){
		return published;
	}
	
	public boolean isDeleted(){
		return deleted;
	}
	
	@Override
	public String toString(){
		String str = "id : " + id + " title : " + title + " content : " + content + " date : " + date +
						" published : " + published + " deleted : " + deleted;
		return str;
	}
	
}