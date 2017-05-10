package com.oc.entity;

public class Teacher extends BaseEntity{
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.TEACHER.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.TEACHER.NAME
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.TEACHER.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer schoolId;
    
    private UserInfo userinfo;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.TEACHER.ID
     *
     * @return the value of ONLINECOURSE.TEACHER.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.TEACHER.ID
     *
     * @param id the value for ONLINECOURSE.TEACHER.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.TEACHER.NAME
     *
     * @return the value of ONLINECOURSE.TEACHER.NAME
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.TEACHER.NAME
     *
     * @param name the value for ONLINECOURSE.TEACHER.NAME
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.TEACHER.SCHOOL_ID
     *
     * @return the value of ONLINECOURSE.TEACHER.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getSchoolId() {
        return schoolId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.TEACHER.SCHOOL_ID
     *
     * @param schoolId the value for ONLINECOURSE.TEACHER.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}
    
}