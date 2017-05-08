package com.oc.entity;

public class CourseClass extends BaseEntity{
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.COURSE_CLASS.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.COURSE_CLASS.COURSE_NAME
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private String courseName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.COURSE_CLASS.UPPERLEVEL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer upperlevelId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.COURSE_CLASS.ISDELETE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer isdelete;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.COURSE_CLASS.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer schoolId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.COURSE_CLASS.ID
     *
     * @return the value of ONLINECOURSE.COURSE_CLASS.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.COURSE_CLASS.ID
     *
     * @param id the value for ONLINECOURSE.COURSE_CLASS.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.COURSE_CLASS.COURSE_NAME
     *
     * @return the value of ONLINECOURSE.COURSE_CLASS.COURSE_NAME
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public String getCourseName() {
        return courseName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.COURSE_CLASS.COURSE_NAME
     *
     * @param courseName the value for ONLINECOURSE.COURSE_CLASS.COURSE_NAME
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setCourseName(String courseName) {
        this.courseName = courseName == null ? null : courseName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.COURSE_CLASS.UPPERLEVEL_ID
     *
     * @return the value of ONLINECOURSE.COURSE_CLASS.UPPERLEVEL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getUpperlevelId() {
        return upperlevelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.COURSE_CLASS.UPPERLEVEL_ID
     *
     * @param upperlevelId the value for ONLINECOURSE.COURSE_CLASS.UPPERLEVEL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setUpperlevelId(Integer upperlevelId) {
        this.upperlevelId = upperlevelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.COURSE_CLASS.ISDELETE
     *
     * @return the value of ONLINECOURSE.COURSE_CLASS.ISDELETE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getIsdelete() {
        return isdelete;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.COURSE_CLASS.ISDELETE
     *
     * @param isdelete the value for ONLINECOURSE.COURSE_CLASS.ISDELETE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.COURSE_CLASS.SCHOOL_ID
     *
     * @return the value of ONLINECOURSE.COURSE_CLASS.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getSchoolId() {
        return schoolId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.COURSE_CLASS.SCHOOL_ID
     *
     * @param schoolId the value for ONLINECOURSE.COURSE_CLASS.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }
}