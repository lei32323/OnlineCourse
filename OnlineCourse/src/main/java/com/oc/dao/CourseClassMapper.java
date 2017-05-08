package com.oc.dao;

import com.oc.entity.CourseClass;
import com.oc.entity.CourseClass;
import java.math.BigDecimal;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseClassMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int countBy(CourseClass example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteBy(CourseClass example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteByPrimaryKey(BigDecimal id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insert(CourseClass record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insertSelective(CourseClass record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    List<CourseClass> selectBy(CourseClass example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    CourseClass selectByPrimaryKey(BigDecimal id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBySelective(@Param("record") CourseClass record, @Param("example") CourseClass example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBy(@Param("record") CourseClass record, @Param("example") CourseClass example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKeySelective(CourseClass record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.COURSE_CLASS
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKey(CourseClass record);
}