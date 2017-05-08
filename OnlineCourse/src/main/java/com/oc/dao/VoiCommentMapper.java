package com.oc.dao;

import com.oc.entity.VoiComment;
import com.oc.entity.VoiComment;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VoiCommentMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int countBy(VoiComment example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteBy(VoiComment example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insert(VoiComment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int insertSelective(VoiComment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    List<VoiComment> selectBy(VoiComment example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    VoiComment selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBySelective(@Param("record") VoiComment record, @Param("example") VoiComment example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateBy(@Param("record") VoiComment record, @Param("example") VoiComment example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKeySelective(VoiComment record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ONLINECOURSE.VOI_COMMENT
     *
     * @mbggenerated Thu Apr 27 22:12:38 CST 2017
     */
    int updateByPrimaryKey(VoiComment record);
}