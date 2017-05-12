prompt PL/SQL Developer import file
prompt Created on 2017-05-13 by wang
set feedback off
set define off
prompt Disabling triggers for COURSE...
alter table COURSE disable all triggers;
prompt Disabling triggers for COURSE_CLASS...
alter table COURSE_CLASS disable all triggers;
prompt Disabling triggers for COURSE_TEACHER...
alter table COURSE_TEACHER disable all triggers;
prompt Disabling triggers for COURSE_USER_NOTE...
alter table COURSE_USER_NOTE disable all triggers;
prompt Disabling triggers for COURSE_VIDEO...
alter table COURSE_VIDEO disable all triggers;
prompt Disabling triggers for DEGREE...
alter table DEGREE disable all triggers;
prompt Disabling triggers for QUESTIONS_ANSWER...
alter table QUESTIONS_ANSWER disable all triggers;
prompt Disabling triggers for QUESTIONS_CLASS...
alter table QUESTIONS_CLASS disable all triggers;
prompt Disabling triggers for TAB_QUESTIONS...
alter table TAB_QUESTIONS disable all triggers;
prompt Disabling triggers for TAB_SCHOOL...
alter table TAB_SCHOOL disable all triggers;
prompt Disabling triggers for TEACHER...
alter table TEACHER disable all triggers;
prompt Disabling triggers for TEACHER_DEGREE...
alter table TEACHER_DEGREE disable all triggers;
prompt Disabling triggers for TEST_PAPER...
alter table TEST_PAPER disable all triggers;
prompt Disabling triggers for USER_COURSE...
alter table USER_COURSE disable all triggers;
prompt Disabling triggers for USER_HISTORYTEST_PAPER...
alter table USER_HISTORYTEST_PAPER disable all triggers;
prompt Disabling triggers for USER_INFO...
alter table USER_INFO disable all triggers;
prompt Disabling triggers for USER_MOOD...
alter table USER_MOOD disable all triggers;
prompt Disabling triggers for USER_VEDIO...
alter table USER_VEDIO disable all triggers;
prompt Disabling triggers for USER_WORDS...
alter table USER_WORDS disable all triggers;
prompt Disabling triggers for VOI_COMMENT...
alter table VOI_COMMENT disable all triggers;
prompt Disabling triggers for YU_USER...
alter table YU_USER disable all triggers;
prompt Deleting YU_USER...
delete from YU_USER;
commit;
prompt Deleting VOI_COMMENT...
delete from VOI_COMMENT;
commit;
prompt Deleting USER_WORDS...
delete from USER_WORDS;
commit;
prompt Deleting USER_VEDIO...
delete from USER_VEDIO;
commit;
prompt Deleting USER_MOOD...
delete from USER_MOOD;
commit;
prompt Deleting USER_INFO...
delete from USER_INFO;
commit;
prompt Deleting USER_HISTORYTEST_PAPER...
delete from USER_HISTORYTEST_PAPER;
commit;
prompt Deleting USER_COURSE...
delete from USER_COURSE;
commit;
prompt Deleting TEST_PAPER...
delete from TEST_PAPER;
commit;
prompt Deleting TEACHER_DEGREE...
delete from TEACHER_DEGREE;
commit;
prompt Deleting TEACHER...
delete from TEACHER;
commit;
prompt Deleting TAB_SCHOOL...
delete from TAB_SCHOOL;
commit;
prompt Deleting TAB_QUESTIONS...
delete from TAB_QUESTIONS;
commit;
prompt Deleting QUESTIONS_CLASS...
delete from QUESTIONS_CLASS;
commit;
prompt Deleting QUESTIONS_ANSWER...
delete from QUESTIONS_ANSWER;
commit;
prompt Deleting DEGREE...
delete from DEGREE;
commit;
prompt Deleting COURSE_VIDEO...
delete from COURSE_VIDEO;
commit;
prompt Deleting COURSE_USER_NOTE...
delete from COURSE_USER_NOTE;
commit;
prompt Deleting COURSE_TEACHER...
delete from COURSE_TEACHER;
commit;
prompt Deleting COURSE_CLASS...
delete from COURSE_CLASS;
commit;
prompt Deleting COURSE...
delete from COURSE;
commit;
prompt Loading COURSE...
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (11, '口语', null, 0, '/static/images/course/20170511090928.jpg', '《大学英语（口语）》MOOC课程以话题为内容，以口语技能为牵引，从纵深两个维度上提高学员对英语口语的实际应用能力。本视频课程共30单元，分30课时讲授，内容广泛涵盖了出国学习和生活中所涉及的主要话题。课程引入雅思考试对口语能力的界定标准和培养方法，在基本日常对话、独立长段输出、多人讨论辩论三个层次上逐步进阶性培养英语口语能力，既为今后有留学计划的学员做应试准备，又全面提高学员日常英语口语输出能力。' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '在本课程结束时，学员能够具备进行国际交流时需要的基本口语能力：能就休闲类话题进行日常对话，并自然使用交际策略；能就一般话题进行持续3分钟左右的即兴演说，并做到组织条理清晰，连接自然，细节充分；能够参与抽象类话题的讨论与辩论，做到分析复杂情况，在此基础上发表并支持自己的观点，并驳斥反观点。' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '本课程适用对象：已修完《大学英语》课程，希望在口语单项上有所突破的学生；以及准备参加雅思、托福考试的学生。', '《大学英语（口语）》MOOC课程以话题为内容，以口语技能为牵引，从纵深两个维度上提高学员对英语口语的实际应用能力。本视频课程共30单元，分30课时讲授，内容广泛涵盖了出国学习和生活中所涉及的主要话题。课程引入雅思考试对口语能力的界定标准和培养方法，在基本日常对话、独立长段输出、多人讨论辩论三个层次上逐步进阶性培养英语口语能力，既为今后有留学计划的学员做应试准备，又全面提高学员日常英语口语输出能力。' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '在本课程结束时，学员能够具备进行国际交流时需要的基本口语能力：能就休闲类话题进行日常对话，并自然使用交际策略；能就一般话题进行持续3分钟左右的即兴演说，并做到组织条理清晰，连接自然，细节充分；能够参与抽象类话题的讨论与辩论，做到分析复杂情况，在此基础上发表并支持自己的观点，并驳斥反观点。' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '本课程适用对象：已修完《大学英语》课程，希望在口语单项上有所突破的学生；以及准备参加雅思、托福考试的学生。', null, '《大学英语（口语）》MOOC课程以话题为内容，以口语技能为牵引，从纵深两个维度上提高学员对英语口语的实际应用能力。本视频课程共30单元，分30课时讲授，内容广泛涵盖了出国学习和生活中所涉及的主要话题。课程引入雅思考试对口语能力的界定标准和培养方法，在基本日常对话、独立长段输出、多人讨论辩论三个层次上逐步进阶性培养英语口语能力，既为今后有留学计划的学员做应试准备，又全面提高学员日常英语口语输出能力。' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '在本课程结束时，学员能够具备进行国际交流时需要的基本口语能力：能就休闲类话题进行日常对话，并自然使用交际策略；能就一般话题进行持续3分钟左右的即兴演说，并做到组织条理清晰，连接自然，细节充分；能够参与抽象类话题的讨论与辩论，做到分析复杂情况，在此基础上发表并支持自己的观点，并驳斥反观点。' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '本课程适用对象：已修完《大学英语》课程，希望在口语单项上有所突破的学生；以及准备参加雅思、托福考试的学生。', null, 1, '00:00', to_date('11-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (16, '口语二', null, 0, '/static/images/course/20170511091022.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('11-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (2, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (12, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (13, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (14, '123123123', null, 0, '/static/images/course/20170510101704.jpg', '123123', '123123', null, '123123', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (15, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (17, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (18, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (19, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (20, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (21, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (95, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (96, '口语', null, 0, '/static/images/course/20170510101615.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (97, '口语', null, 0, '/static/images/course/20170510101644.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (98, '口语', null, 0, '/static/images/course/20170510101653.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (99, '口语', null, 0, '/static/images/course/20170510101704.jpg', '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (100, '口语', null, 0, null, '英语。。。。。。。。。。。。。。。。。。。。', '大专', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (121, null, null, 0, null, null, null, null, null, null, 1, '00:00', to_date('11-05-2017', 'dd-mm-yyyy'), 0);
commit;
prompt 19 records loaded
prompt Loading COURSE_CLASS...
insert into COURSE_CLASS (ID, COURSE_NAME, UPPERLEVEL_ID, ISDELETE, SCHOOL_ID)
values (1, '英语', null, 0, 1);
commit;
prompt 1 records loaded
prompt Loading COURSE_TEACHER...
insert into COURSE_TEACHER (COURSE_ID, TEACHER_ID, SCHOOL_ID)
values (1, 1, 1);
commit;
prompt 1 records loaded
prompt Loading COURSE_USER_NOTE...
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (3, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语2', '口译1111', '口语-笔记111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (4, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语3', '口译11111', '口语-笔记1111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (5, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语4', '口译111', '口语-笔记1111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (6, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语5', '口译', '口语-笔记1111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (7, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语6', '口译1', '口语-笔记11111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (8, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语7', '口译1', '口语-笔记11111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (9, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语8', '口译1', '口语-笔记122', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (10, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语9', '口译1', '口语-笔记12222', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (12, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语77', '口译1', '口语-笔记133333', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (13, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语777', '口译1', '口语-笔记14444', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (14, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语7777', '口译1', '口语-笔记15555', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (15, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语77777', '口译1', '口语-笔记166666', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (16, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语777777', '口译1', '口语-笔记17777', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (17, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('06-04-2017', 'dd-mm-yyyy'), '英语7777777', '口译1', '口语-笔记112311111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (18, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语77777777', '口译1', '口语-笔记12123', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (19, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语777777777', '口译1', '口语-笔记1123', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (20, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('20-04-2017', 'dd-mm-yyyy'), '英语7777777', '口译1', '口语-笔记111233123', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (21, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('13-05-2017', 'dd-mm-yyyy'), '英语cccccccccccc', '口译2qqqqqqqq', '口语-笔记qqqq', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (1, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), '英语', '口译1', '口语-笔记1', 'png');
commit;
prompt 19 records loaded
prompt Loading COURSE_VIDEO...
insert into COURSE_VIDEO (ID, COURSE_ID, VIDEOPATH, CREATIME, VIDEOLONG, TOTAL, COMMENT_COUNT, SCHOOL_ID, NAME, FENGMIAN)
values (30, 11, '/static/video/11/20170511083842.mp4', to_date('11-05-2017', 'dd-mm-yyyy'), null, 8, 2, 1, '口语·1', '/static/images/course/20170511083842.jpg');
commit;
prompt 1 records loaded
prompt Loading DEGREE...
insert into DEGREE (ID, NAME, ISDELETE)
values (1, '研究生', 0);
commit;
prompt 1 records loaded
prompt Loading QUESTIONS_ANSWER...
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (3, null, null, null, null, to_date('06-05-2017', 'dd-mm-yyyy'), null, 1, 'admin', null, 5);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (1, 5, 5, 1, 1, to_date('17-05-2017', 'dd-mm-yyyy'), 1, 1, '张三', '不知道', null);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (2, 5, 5, 2, 2, to_date('03-05-2017', 'dd-mm-yyyy'), 0, 1, '里斯', '不知道', null);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (4, null, null, null, null, to_date('06-05-2017', 'dd-mm-yyyy'), null, 1, 'admin', null, 5);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (5, 5, 5, null, null, to_date('06-05-2017', 'dd-mm-yyyy'), null, 1, 'admin', 'qweqweqweqweqwe', 5);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (6, 20, 20, null, null, to_date('06-05-2017', 'dd-mm-yyyy'), null, 1, 'admin', '看视频', 5);
commit;
prompt 6 records loaded
prompt Loading QUESTIONS_CLASS...
prompt Table is empty
prompt Loading TAB_QUESTIONS...
insert into TAB_QUESTIONS (ID, QUESTIONS_CLASS_ID, FILE_PATH, DOUBT, CONTENT, STATUS, SCHOOL_ID, USER_ID, UPDATE_DATE)
values (5, null, null, '语法怎么学习', null, 0, 1, 5, to_date('03-05-2017', 'dd-mm-yyyy'));
insert into TAB_QUESTIONS (ID, QUESTIONS_CLASS_ID, FILE_PATH, DOUBT, CONTENT, STATUS, SCHOOL_ID, USER_ID, UPDATE_DATE)
values (20, null, null, '语法怎么学习', null, 0, 1, 5, to_date('06-05-2017', 'dd-mm-yyyy'));
commit;
prompt 2 records loaded
prompt Loading TAB_SCHOOL...
insert into TAB_SCHOOL (ID, SCHOOL_NAME, IMAGE_SIZE, SCHOOL_PROFILE, ISDELETE, PASSWORD, IMAGE_PATH)
values (3, '江苏海事职业技术学院', '14065', '江苏海事职业技术学院是2003年7月经江苏省人民政府批准由南京海运学校和南京航运学校合并组建的一所全日制普通高等院校。学院隶属于江苏省教育厅，主要培养海洋船舶驾驶、海洋船舶轮机管理、国际运输管理、港口管理、国际贸易、船舶制造、计算机信息技术以及商务英语等高等职业技术人才。', 0, '1234', '/static/images/school/20170511091035.jpg');
commit;
prompt 1 records loaded
prompt Loading TEACHER...
insert into TEACHER (ID, NAME, SCHOOL_ID, USER_ID)
values (10, '123123老师', 1, 41);
insert into TEACHER (ID, NAME, SCHOOL_ID, USER_ID)
values (1, '张老师', 1, 5);
commit;
prompt 2 records loaded
prompt Loading TEACHER_DEGREE...
insert into TEACHER_DEGREE (TEACHER_ID, DEGREE_ID, SCHOOL_ID)
values (1, 1, 1);
commit;
prompt 1 records loaded
prompt Loading TEST_PAPER...
prompt Table is empty
prompt Loading USER_COURSE...
prompt Table is empty
prompt Loading USER_HISTORYTEST_PAPER...
prompt Table is empty
prompt Loading USER_INFO...
insert into USER_INFO (ID, LOGIN_NAME, LOGIN_PWD, TYPE, EMAIL, HEAD_ADDRESS, STATUS, SELF_INTRODUCTION, ISLOGIN, PHONE, QQ, HOBBY, SCHOOL_ID, SEX)
values (41, '123123', '123123', 1, '强强强强', null, 0, null, 0, null, null, null, 1, null);
insert into USER_INFO (ID, LOGIN_NAME, LOGIN_PWD, TYPE, EMAIL, HEAD_ADDRESS, STATUS, SELF_INTRODUCTION, ISLOGIN, PHONE, QQ, HOBBY, SCHOOL_ID, SEX)
values (21, 'wanglei', 'wanglei', 0, '507832323@qq.com', '/static/images/20170511/ba4d74fde038477f92c4f1c7893642eb.png', 0, '44444', 1, '4444444', 4444444, '44444', 1, 1);
insert into USER_INFO (ID, LOGIN_NAME, LOGIN_PWD, TYPE, EMAIL, HEAD_ADDRESS, STATUS, SELF_INTRODUCTION, ISLOGIN, PHONE, QQ, HOBBY, SCHOOL_ID, SEX)
values (5, 'admin', 'admin', 0, '507832323@qq.com', '/static/images/20170428/194348571d7d4959a15b5e31283ee0b2.png', 0, '无123', 1, '15366161339', 507832323, '无', 1, 1);
commit;
prompt 3 records loaded
prompt Loading USER_MOOD...
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 6);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '１２３１２３', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 2);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 7);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 8);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 9);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 10);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 11);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 13);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 14);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 15);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 16);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '錢錢錢錢錢錢', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 17);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '去去去去去', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 18);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....１１１１１１１１１１１１１１１１１１１１１１１', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 19);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '发表一下....１１１１１１１１１１', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 20);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '你好嗎請問', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 21);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '１２３', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 22);
commit;
prompt 17 records loaded
prompt Loading USER_VEDIO...
insert into USER_VEDIO (USER_ID, VEDIO_ID, STATUS, SCHOOL_ID, UPDATE_DATE)
values (21, 30, 1, null, null);
insert into USER_VEDIO (USER_ID, VEDIO_ID, STATUS, SCHOOL_ID, UPDATE_DATE)
values (21, 30, 1, null, null);
insert into USER_VEDIO (USER_ID, VEDIO_ID, STATUS, SCHOOL_ID, UPDATE_DATE)
values (21, 30, 1, null, null);
insert into USER_VEDIO (USER_ID, VEDIO_ID, STATUS, SCHOOL_ID, UPDATE_DATE)
values (21, 30, 1, null, null);
insert into USER_VEDIO (USER_ID, VEDIO_ID, STATUS, SCHOOL_ID, UPDATE_DATE)
values (21, 30, 1, null, null);
insert into USER_VEDIO (USER_ID, VEDIO_ID, STATUS, SCHOOL_ID, UPDATE_DATE)
values (21, 30, 1, null, null);
insert into USER_VEDIO (USER_ID, VEDIO_ID, STATUS, SCHOOL_ID, UPDATE_DATE)
values (21, 30, 1, null, null);
commit;
prompt 7 records loaded
prompt Loading USER_WORDS...
insert into USER_WORDS (ID, MESSAGE_SIDE_ID, UPDATE_DATE, SCHOOL_ID, USER_ID, WORDS)
values (1, 5, to_date('11-05-2017', 'dd-mm-yyyy'), 1, 5, '你好吗1111111111111111111111111111111111');
insert into USER_WORDS (ID, MESSAGE_SIDE_ID, UPDATE_DATE, SCHOOL_ID, USER_ID, WORDS)
values (2, 5, to_date('23-05-2017', 'dd-mm-yyyy'), 1, 5, '阿斯顿');
insert into USER_WORDS (ID, MESSAGE_SIDE_ID, UPDATE_DATE, SCHOOL_ID, USER_ID, WORDS)
values (3, null, to_date('06-05-2017', 'dd-mm-yyyy'), 1, 5, null);
insert into USER_WORDS (ID, MESSAGE_SIDE_ID, UPDATE_DATE, SCHOOL_ID, USER_ID, WORDS)
values (4, null, to_date('06-05-2017', 'dd-mm-yyyy'), 1, 5, null);
insert into USER_WORDS (ID, MESSAGE_SIDE_ID, UPDATE_DATE, SCHOOL_ID, USER_ID, WORDS)
values (6, null, to_date('06-05-2017', 'dd-mm-yyyy'), 1, 5, null);
insert into USER_WORDS (ID, MESSAGE_SIDE_ID, UPDATE_DATE, SCHOOL_ID, USER_ID, WORDS)
values (5, null, to_date('06-05-2017', 'dd-mm-yyyy'), 1, 5, null);
commit;
prompt 6 records loaded
prompt Loading VOI_COMMENT...
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (116, null, 21, '111222333', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (117, null, 21, '111222333124124124', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (118, null, 21, '11122233312412412415223423', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (119, null, 21, '1112223331241241241522342311111', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (120, null, 21, '111222333124124124152234231111123123', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (121, null, 21, '111', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (114, null, 21, '111', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (115, null, 21, '111222', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (122, null, 21, '123123123', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
insert into VOI_COMMENT (ID, COURSE_ID, USER_ID, CONTENT, FORWARD, REPLY, UPDATE_DATE, SCHOOL_ID)
values (123, null, 21, '12312312311', 30, null, to_date('12-05-2017', 'dd-mm-yyyy'), 1);
commit;
prompt 10 records loaded
prompt Loading YU_USER...
insert into YU_USER (USER_ID, USER_NAME, ACCT_ORG, ACCT_NAME, CREATE_ID, CREATE_DATE, TYPE, PWD)
values ('admin', '管理员', '12', '中银', '1', to_date('06-04-2017', 'dd-mm-yyyy'), '1', 'admin');
commit;
prompt 1 records loaded
prompt Enabling triggers for COURSE...
alter table COURSE enable all triggers;
prompt Enabling triggers for COURSE_CLASS...
alter table COURSE_CLASS enable all triggers;
prompt Enabling triggers for COURSE_TEACHER...
alter table COURSE_TEACHER enable all triggers;
prompt Enabling triggers for COURSE_USER_NOTE...
alter table COURSE_USER_NOTE enable all triggers;
prompt Enabling triggers for COURSE_VIDEO...
alter table COURSE_VIDEO enable all triggers;
prompt Enabling triggers for DEGREE...
alter table DEGREE enable all triggers;
prompt Enabling triggers for QUESTIONS_ANSWER...
alter table QUESTIONS_ANSWER enable all triggers;
prompt Enabling triggers for QUESTIONS_CLASS...
alter table QUESTIONS_CLASS enable all triggers;
prompt Enabling triggers for TAB_QUESTIONS...
alter table TAB_QUESTIONS enable all triggers;
prompt Enabling triggers for TAB_SCHOOL...
alter table TAB_SCHOOL enable all triggers;
prompt Enabling triggers for TEACHER...
alter table TEACHER enable all triggers;
prompt Enabling triggers for TEACHER_DEGREE...
alter table TEACHER_DEGREE enable all triggers;
prompt Enabling triggers for TEST_PAPER...
alter table TEST_PAPER enable all triggers;
prompt Enabling triggers for USER_COURSE...
alter table USER_COURSE enable all triggers;
prompt Enabling triggers for USER_HISTORYTEST_PAPER...
alter table USER_HISTORYTEST_PAPER enable all triggers;
prompt Enabling triggers for USER_INFO...
alter table USER_INFO enable all triggers;
prompt Enabling triggers for USER_MOOD...
alter table USER_MOOD enable all triggers;
prompt Enabling triggers for USER_VEDIO...
alter table USER_VEDIO enable all triggers;
prompt Enabling triggers for USER_WORDS...
alter table USER_WORDS enable all triggers;
prompt Enabling triggers for VOI_COMMENT...
alter table VOI_COMMENT enable all triggers;
prompt Enabling triggers for YU_USER...
alter table YU_USER enable all triggers;
set feedback on
set define on
prompt Done.
