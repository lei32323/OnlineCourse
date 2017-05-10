package com.oc.dao;

import com.oc.entity.TabSchool;
import com.oc.entity.TabSchool;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TabSchoolMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int countBy(TabSchool example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteBy(TabSchool example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insert(TabSchool record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insertSelective(TabSchool record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    List<TabSchool> selectByExample(TabSchool example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    TabSchool selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBySelective(@Param("record") TabSchool record, @Param("example") TabSchool example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBy(@Param("record") TabSchool record, @Param("example") TabSchool example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKeySelective(TabSchool record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TAB_SCHOOL
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKey(TabSchool record);
}