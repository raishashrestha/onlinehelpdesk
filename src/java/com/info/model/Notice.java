/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.model;

import java.sql.Date;

 
/**
 *
 * @author Lenovo G40
 */
public class Notice {
    private int nid;
    private String department;
    private String notice;
    private Date date_published;
    private String year;
    /**
     * @return the nid
     */
    public int getNid() {
        return nid;
    }

    /**
     * @param nid the nid to set
     */
    public void setNid(int nid) {
        this.nid = nid;
    }

    /**
     * @return the department
     */
    public String getDepartment() {
        return department;
    }

    /**
     * @param department the department to set
     */
    public void setDepartment(String department) {
        this.department = department;
    }

    /**
     * @return the notice
     */
    public String getNotice() {
        return notice;
    }

    /**
     * @param notice the notice to set
     */
    public void setNotice(String notice) {
        this.notice = notice;
    }

    /**
     * @return the date_published
     */
    public Date getDate_published() {
        return date_published;
    }

    /**
     * @param date_published the date_published to set
     */
    public void setDate_published(Date date_published) {
        this.date_published = date_published;
    }

    /**
     * @return the year
     */
    public String getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(String year) {
        this.year = year;
    }
    
    
}
