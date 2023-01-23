package com.kgisl.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fullorder")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private int id;

    @Column(name = "order_name")
    private String ordername;

    @Column(name = "buyer_name")
    private String buyername;

    @Column(name = "res")
    private String res;

    @Column(name = "location")
    private String location;

    @Column(name = "date")
    private String date;

    @Column(name = "price")
    private float price;

    @Column(name = "cus_id")
    private int cusid;

    
    public Order() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrdername() {
        return ordername;
    }

    public void setOrdername(String ordername) {
        this.ordername = ordername;
    }

    public String getBuyername() {
        return buyername;
    }

    public void setBuyername(String buyername) {
        this.buyername = buyername;
    }

    public String getRes() {
        return res;
    }

    public void setRes(String res) {
        this.res = res;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getCusid() {
        return cusid;
    }

    public void setCusid(int cusid) {
        this.cusid = cusid;
    }

    @Override
    public String toString() {
        return "Order [order_id=" + id + ", ordername=" + ordername + ", buyername=" + buyername + ", res=" + res
                + ", location=" + location + ", date=" + date + ", price=" + price + ", cus_id=" + cusid + "]";
    }









}
