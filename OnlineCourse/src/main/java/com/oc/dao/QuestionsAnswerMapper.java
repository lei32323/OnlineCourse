package com.oc.dao;

import com.oc.entity.QuestionsAnswer;
import com.oc.entity.QuestionsAnswer;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface QuestionsAnswerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int countBy(QuestionsAnswer example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteBy(QuestionsAnswer example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insert(QuestionsAnswer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insertSelective(QuestionsAnswer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    List<QuestionsAnswer> selectByExample(QuestionsAnswer example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    QuestionsAnswer selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBySelective(@Param("record") QuestionsAnswer record, @Param("example") QuestionsAnswer example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBy(@Param("record") QuestionsAnswer record, @Param("example") QuestionsAnswer example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKeySelective(QuestionsAnswer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.QUESTIONS_ANSWER
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKey(QuestionsAnswer record);
}