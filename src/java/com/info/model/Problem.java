/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.model;

/**
 *
 * @author Lenovo G40
 */
public class Problem {
    private int Id;
    private String Pname;
    private String Pdescription;
    private String department;
    private int status;
    private String presponse;
    /**
     * @return the Id
     */
    public int getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(int Id) {
        this.Id = Id;
    }

    /**
     * @return the Pname
     */
    public String getPname() {
        return Pname;
    }

    /**
     * @param Pname the Pname to set
     */
    public void setPname(String Pname) {
        this.Pname = Pname;
    }

    /**
     * @return the Pdescription
     */
    public String getPdescription() {
        return Pdescription;
    }

    /**
     * @param Pdescription the Pdescription to set
     */
    public void setPdescription(String Pdescription) {
        this.Pdescription = Pdescription;
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
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * @return the presponse
     */
    public String getPresponse() {
        return presponse;
    }

    /**
     * @param presponse the presponse to set
     */
    public void setPresponse(String presponse) {
        this.presponse = presponse;
    }
    
    
}
