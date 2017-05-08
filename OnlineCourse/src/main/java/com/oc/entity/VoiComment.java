package com.oc.entity;

import java.util.Date;

public class VoiComment extends BaseEntity{
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.VOI_COMMENT.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.VOI_COMMENT.COURSE_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer courseId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.VOI_COMMENT.USER_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.VOI_COMMENT.CONTENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.VOI_COMMENT.FORWARD
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer forward;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.VOI_COMMENT.REPLY
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer reply;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.VOI_COMMENT.UPDATE_DATE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Date updateDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ONLINECOURSE.VOI_COMMENT.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    private Integer schoolId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.VOI_COMMENT.ID
     *
     * @return the value of ONLINECOURSE.VOI_COMMENT.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.VOI_COMMENT.ID
     *
     * @param id the value for ONLINECOURSE.VOI_COMMENT.ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.VOI_COMMENT.COURSE_ID
     *
     * @return the value of ONLINECOURSE.VOI_COMMENT.COURSE_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getCourseId() {
        return courseId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.VOI_COMMENT.COURSE_ID
     *
     * @param courseId the value for ONLINECOURSE.VOI_COMMENT.COURSE_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.VOI_COMMENT.USER_ID
     *
     * @return the value of ONLINECOURSE.VOI_COMMENT.USER_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.VOI_COMMENT.USER_ID
     *
     * @param userId the value for ONLINECOURSE.VOI_COMMENT.USER_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.VOI_COMMENT.CONTENT
     *
     * @return the value of ONLINECOURSE.VOI_COMMENT.CONTENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.VOI_COMMENT.CONTENT
     *
     * @param content the value for ONLINECOURSE.VOI_COMMENT.CONTENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.VOI_COMMENT.FORWARD
     *
     * @return the value of ONLINECOURSE.VOI_COMMENT.FORWARD
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getForward() {
        return forward;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.VOI_COMMENT.FORWARD
     *
     * @param forward the value for ONLINECOURSE.VOI_COMMENT.FORWARD
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setForward(Integer forward) {
        this.forward = forward;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.VOI_COMMENT.REPLY
     *
     * @return the value of ONLINECOURSE.VOI_COMMENT.REPLY
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getReply() {
        return reply;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.VOI_COMMENT.REPLY
     *
     * @param reply the value for ONLINECOURSE.VOI_COMMENT.REPLY
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setReply(Integer reply) {
        this.reply = reply;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.VOI_COMMENT.UPDATE_DATE
     *
     * @return the value of ONLINECOURSE.VOI_COMMENT.UPDATE_DATE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.VOI_COMMENT.UPDATE_DATE
     *
     * @param updateDate the value for ONLINECOURSE.VOI_COMMENT.UPDATE_DATE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ONLINECOURSE.VOI_COMMENT.SCHOOL_ID
     *
     * @return the value of ONLINECOURSE.VOI_COMMENT.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public Integer getSchoolId() {
        return schoolId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ONLINECOURSE.VOI_COMMENT.SCHOOL_ID
     *
     * @param schoolId the value for ONLINECOURSE.VOI_COMMENT.SCHOOL_ID
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }
}