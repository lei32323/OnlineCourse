package com.oc.dao;

import com.oc.entity.Degree;
import com.oc.entity.Degree;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DegreeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int countBy(Degree example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteBy(Degree example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insert(Degree record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insertSelective(Degree record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    List<Degree> selectBy(Degree example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    Degree selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBySelective(@Param("record") Degree record, @Param("example") Degree example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBy(@Param("record") Degree record, @Param("example") Degree example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKeySelective(Degree record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.DEGREE
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKey(Degree record);
}