package com.oc.dao;

import com.oc.entity.TestPaper;
import com.oc.entity.TestPaper;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TestPaperMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int countBy(TestPaper example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteBy(TestPaper example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insert(TestPaper record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insertSelective(TestPaper record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    List<TestPaper> selectBy(TestPaper example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    TestPaper selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBySelective(@Param("record") TestPaper record, @Param("example") TestPaper example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBy(@Param("record") TestPaper record, @Param("example") TestPaper example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKeySelective(TestPaper record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.TEST_PAPER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKey(TestPaper record);
}