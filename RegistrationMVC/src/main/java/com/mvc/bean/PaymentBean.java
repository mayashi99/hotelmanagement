package com.mvc.bean;

public class PaymentBean {

	    private String fullName;
	    private String email;
	    private String address;
	    private String city;
	    private String state;
	    private String zip;
	    private String cardName;
	    private String cardNumber;
	    private String expMonth;
	    private String expYear;
	    private String cvv;

	    // Getters and Setters for all fields
	    public String getFullName() {
	        return fullName;
	    }

	    public void setFullName(String fullName) {
	        this.fullName = fullName;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getAddress() {
	        return address;
	    }

	    public void setAddress(String address) {
	        this.address = address;
	    }

	    public String getCity() {
	        return city;
	    }

	    public void setCity(String city) {
	        this.city = city;
	    }

	    public String getState() {
	        return state;
	    }

	    public void setState(String state) {
	        this.state = state;
	    }

	    public String getZip() {
	        return zip;
	    }

	    public void setZip(String zip) {
	        this.zip = zip;
	    }

	    public String getCardName() {
	        return cardName;
	    }

	    public void setCardName(String cardName) {
	        this.cardName = cardName;
	    }

	    public String getCardNumber() {
	        return cardNumber;
	    }

	    public void setCardNumber(String cardNumber) {
	        this.cardNumber = cardNumber;
	    }

	    public String getExpMonth() {
	        return expMonth;
	    }

	    public void setExpMonth(String expMonth) {
	        this.expMonth = expMonth;
	    }

	    public String getExpYear() {
	        return expYear;
	    }

	    public void setExpYear(String expYear) {
	        this.expYear = expYear;
	    }

	    public String getCvv() {
	        return cvv;
	    }

	    public void setCvv(String cvv) {
	        this.cvv = cvv;
	    }
	}
