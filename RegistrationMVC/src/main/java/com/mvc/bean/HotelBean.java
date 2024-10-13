package com.mvc.bean;

public class HotelBean {

	    private String id;
	    private String name;
	    private String description;
	    private String location;

	    // Constructor
	    public HotelBean(String id, String name, String description, String location) {
	        this.id = id;
	        this.name = name;
	        this.description = description;
	        this.location = location;
	    }

	    // Getters and setters
	    public String getId() {
	        return id;
	    }

	    public void setId(String id) {
	        this.id = id;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getDescription() {
	        return description;
	    }

	    public void setDescription(String description) {
	        this.description = description;
	    }

	    public String getLocation() {
	        return location;
	    }

	    public void setLocation(String location) {
	        this.location = location;
	    }
	}


