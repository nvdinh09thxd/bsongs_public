package model.bean;

import java.sql.Timestamp;

public class Song {
	int id;
	String name;
	String previewText;
	String detailText;
	Timestamp dateCreate;
	String picture;
	int counter;
	Category itemCat;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPreviewText() {
		return previewText;
	}

	public void setPreviewText(String previewText) {
		this.previewText = previewText;
	}

	public String getDetailText() {
		return detailText;
	}

	public void setDetailText(String detailText) {
		this.detailText = detailText;
	}

	public Timestamp getDateCreate() {
		return dateCreate;
	}

	public void setDateCreate(Timestamp dateCreate) {
		this.dateCreate = dateCreate;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getCounter() {
		return counter;
	}

	public void setCounter(int counter) {
		this.counter = counter;
	}

	public Category getItemCat() {
		return itemCat;
	}

	public void setItemCat(Category itemCat) {
		this.itemCat = itemCat;
	}

	public Song(int id, String name, String previewText, String detailText, Timestamp dateCreate, String picture,
			int counter, Category itemCat) {
		super();
		this.id = id;
		this.name = name;
		this.previewText = previewText;
		this.detailText = detailText;
		this.dateCreate = dateCreate;
		this.picture = picture;
		this.counter = counter;
		this.itemCat = itemCat;
	}

	public Song() {
		super();
	}

}
