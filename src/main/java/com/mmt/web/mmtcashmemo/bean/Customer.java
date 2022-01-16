package com.mmt.web.mmtcashmemo.bean;

public class Customer {
    private int memoNo;
    private String name;
    private String address;
    private String contact;
    private String date;
    private int urea;
    private int mop;
    private int tsp;
    private int dap;

    public Customer(int memoNo, String name, String address, String contact, String date, int urea, int mop, int tsp, int dap) {
        this.memoNo = memoNo;
        this.name = name;
        this.address = address;
        this.contact = contact;
        this.date = date;
        this.urea = urea;
        this.mop = mop;
        this.tsp = tsp;
        this.dap = dap;
    }

    public Customer(String name, String address, String contact, String date, int urea, int mop, int tsp, int dap) {
        this.name = name;
        this.address = address;
        this.contact = contact;
        this.date = date;
        this.urea = urea;
        this.mop = mop;
        this.tsp = tsp;
        this.dap = dap;
    }

    public Customer(int memoNo, String name, String contact) {
        this.memoNo = memoNo;
        this.name = name;
        this.contact = contact;
    }

    public int getMemoNo() {
        return memoNo;
    }

    public void setMemoNo(int memoNo) {
        this.memoNo = memoNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getUrea() {
        return urea;
    }

    public void setUrea(int urea) {
        this.urea = urea;
    }

    public int getMop() {
        return mop;
    }

    public void setMop(int mop) {
        this.mop = mop;
    }

    public int getTsp() {
        return tsp;
    }

    public void setTsp(int tsp) {
        this.tsp = tsp;
    }

    public int getDap() {
        return dap;
    }

    public void setDap(int dap) {
        this.dap = dap;
    }
}
