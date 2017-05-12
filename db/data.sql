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
values (11, '����', null, 0, '/static/images/course/20170511090928.jpg', '����ѧӢ������MOOC�γ��Ի���Ϊ���ݣ��Կ��＼��Ϊǣ��������������ά�������ѧԱ��Ӣ������ʵ��Ӧ������������Ƶ�γ̹�30��Ԫ����30��ʱ���ڣ����ݹ㷺�����˳���ѧϰ�����������漰����Ҫ���⡣�γ�������˼���ԶԿ��������Ľ綨��׼�������������ڻ����ճ��Ի�����������������������۱�������������𲽽���������Ӣ�������������Ϊ�������ѧ�ƻ���ѧԱ��Ӧ��׼������ȫ�����ѧԱ�ճ�Ӣ��������������' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '�ڱ��γ̽���ʱ��ѧԱ�ܹ��߱����й��ʽ���ʱ��Ҫ�Ļ��������������ܾ������໰������ճ��Ի�������Ȼʹ�ý��ʲ��ԣ��ܾ�һ�㻰����г���3�������ҵļ�����˵����������֯����������������Ȼ��ϸ�ڳ�֣��ܹ���������໰�����������ۣ�������������������ڴ˻����Ϸ���֧���Լ��Ĺ۵㣬�����ⷴ�۵㡣' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '���γ����ö��������꡶��ѧӢ��γ̣�ϣ���ڿ��ﵥ��������ͻ�Ƶ�ѧ�����Լ�׼���μ���˼���и����Ե�ѧ����', '����ѧӢ������MOOC�γ��Ի���Ϊ���ݣ��Կ��＼��Ϊǣ��������������ά�������ѧԱ��Ӣ������ʵ��Ӧ������������Ƶ�γ̹�30��Ԫ����30��ʱ���ڣ����ݹ㷺�����˳���ѧϰ�����������漰����Ҫ���⡣�γ�������˼���ԶԿ��������Ľ綨��׼�������������ڻ����ճ��Ի�����������������������۱�������������𲽽���������Ӣ�������������Ϊ�������ѧ�ƻ���ѧԱ��Ӧ��׼������ȫ�����ѧԱ�ճ�Ӣ��������������' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '�ڱ��γ̽���ʱ��ѧԱ�ܹ��߱����й��ʽ���ʱ��Ҫ�Ļ��������������ܾ������໰������ճ��Ի�������Ȼʹ�ý��ʲ��ԣ��ܾ�һ�㻰����г���3�������ҵļ�����˵����������֯����������������Ȼ��ϸ�ڳ�֣��ܹ���������໰�����������ۣ�������������������ڴ˻����Ϸ���֧���Լ��Ĺ۵㣬�����ⷴ�۵㡣' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '���γ����ö��������꡶��ѧӢ��γ̣�ϣ���ڿ��ﵥ��������ͻ�Ƶ�ѧ�����Լ�׼���μ���˼���и����Ե�ѧ����', null, '����ѧӢ������MOOC�γ��Ի���Ϊ���ݣ��Կ��＼��Ϊǣ��������������ά�������ѧԱ��Ӣ������ʵ��Ӧ������������Ƶ�γ̹�30��Ԫ����30��ʱ���ڣ����ݹ㷺�����˳���ѧϰ�����������漰����Ҫ���⡣�γ�������˼���ԶԿ��������Ľ綨��׼�������������ڻ����ճ��Ի�����������������������۱�������������𲽽���������Ӣ�������������Ϊ�������ѧ�ƻ���ѧԱ��Ӧ��׼������ȫ�����ѧԱ�ճ�Ӣ��������������' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '�ڱ��γ̽���ʱ��ѧԱ�ܹ��߱����й��ʽ���ʱ��Ҫ�Ļ��������������ܾ������໰������ճ��Ի�������Ȼʹ�ý��ʲ��ԣ��ܾ�һ�㻰����г���3�������ҵļ�����˵����������֯����������������Ȼ��ϸ�ڳ�֣��ܹ���������໰�����������ۣ�������������������ڴ˻����Ϸ���֧���Լ��Ĺ۵㣬�����ⷴ�۵㡣' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '���γ����ö��������꡶��ѧӢ��γ̣�ϣ���ڿ��ﵥ��������ͻ�Ƶ�ѧ�����Լ�׼���μ���˼���и����Ե�ѧ����', null, 1, '00:00', to_date('11-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (16, '�����', null, 0, '/static/images/course/20170511091022.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('11-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (2, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (12, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (13, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (14, '123123123', null, 0, '/static/images/course/20170510101704.jpg', '123123', '123123', null, '123123', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (15, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (17, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (18, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (19, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (20, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (21, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('09-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (95, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (96, '����', null, 0, '/static/images/course/20170510101615.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (97, '����', null, 0, '/static/images/course/20170510101644.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (98, '����', null, 0, '/static/images/course/20170510101653.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (99, '����', null, 0, '/static/images/course/20170510101704.jpg', 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (100, '����', null, 0, null, 'Ӣ���������������������������������������', '��ר', null, '1111111111111111111', null, 1, '00:00', to_date('10-05-2017', 'dd-mm-yyyy'), 1);
insert into COURSE (ID, NAME, CLASS_ID, ISDELETE, COURSE_COVER, COURSE_SUMMARY, CERTIFICATE_REQUIREMENT, KNOWLEDGE, OUTLINE, REMARKS, SCHOOL_ID, TIMESUM, UPDATE_DATE, TEACHER_ID)
values (121, null, null, 0, null, null, null, null, null, null, 1, '00:00', to_date('11-05-2017', 'dd-mm-yyyy'), 0);
commit;
prompt 19 records loaded
prompt Loading COURSE_CLASS...
insert into COURSE_CLASS (ID, COURSE_NAME, UPPERLEVEL_ID, ISDELETE, SCHOOL_ID)
values (1, 'Ӣ��', null, 0, 1);
commit;
prompt 1 records loaded
prompt Loading COURSE_TEACHER...
insert into COURSE_TEACHER (COURSE_ID, TEACHER_ID, SCHOOL_ID)
values (1, 1, 1);
commit;
prompt 1 records loaded
prompt Loading COURSE_USER_NOTE...
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (3, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��2', '����1111', '����-�ʼ�111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (4, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��3', '����11111', '����-�ʼ�1111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (5, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��4', '����111', '����-�ʼ�1111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (6, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��5', '����', '����-�ʼ�1111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (7, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��6', '����1', '����-�ʼ�11111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (8, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��7', '����1', '����-�ʼ�11111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (9, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��8', '����1', '����-�ʼ�122', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (10, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��9', '����1', '����-�ʼ�12222', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (12, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��77', '����1', '����-�ʼ�133333', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (13, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��777', '����1', '����-�ʼ�14444', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (14, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��7777', '����1', '����-�ʼ�15555', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (15, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��77777', '����1', '����-�ʼ�166666', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (16, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��777777', '����1', '����-�ʼ�17777', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (17, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('06-04-2017', 'dd-mm-yyyy'), 'Ӣ��7777777', '����1', '����-�ʼ�112311111', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (18, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��77777777', '����1', '����-�ʼ�12123', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (19, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��777777777', '����1', '����-�ʼ�1123', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (20, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('20-04-2017', 'dd-mm-yyyy'), 'Ӣ��7777777', '����1', '����-�ʼ�111233123', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (21, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('13-05-2017', 'dd-mm-yyyy'), 'Ӣ��cccccccccccc', '����2qqqqqqqq', '����-�ʼ�qqqq', 'png');
insert into COURSE_USER_NOTE (ID, VEDIO_ID, USER_ID, FILE_PATH, SCHOOL_ID, UPDATE_DATE, COURSE_NAME, VEDIO_NAME, NOTE_NAME, HOUZHUI)
values (1, 1, 5, 'WEB-INF\classes\resource\20170428090813\9135e656653f4906b65dba0bb3af8100.png', 1, to_date('11-04-2017', 'dd-mm-yyyy'), 'Ӣ��', '����1', '����-�ʼ�1', 'png');
commit;
prompt 19 records loaded
prompt Loading COURSE_VIDEO...
insert into COURSE_VIDEO (ID, COURSE_ID, VIDEOPATH, CREATIME, VIDEOLONG, TOTAL, COMMENT_COUNT, SCHOOL_ID, NAME, FENGMIAN)
values (30, 11, '/static/video/11/20170511083842.mp4', to_date('11-05-2017', 'dd-mm-yyyy'), null, 8, 2, 1, '���1', '/static/images/course/20170511083842.jpg');
commit;
prompt 1 records loaded
prompt Loading DEGREE...
insert into DEGREE (ID, NAME, ISDELETE)
values (1, '�о���', 0);
commit;
prompt 1 records loaded
prompt Loading QUESTIONS_ANSWER...
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (3, null, null, null, null, to_date('06-05-2017', 'dd-mm-yyyy'), null, 1, 'admin', null, 5);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (1, 5, 5, 1, 1, to_date('17-05-2017', 'dd-mm-yyyy'), 1, 1, '����', '��֪��', null);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (2, 5, 5, 2, 2, to_date('03-05-2017', 'dd-mm-yyyy'), 0, 1, '��˹', '��֪��', null);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (4, null, null, null, null, to_date('06-05-2017', 'dd-mm-yyyy'), null, 1, 'admin', null, 5);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (5, 5, 5, null, null, to_date('06-05-2017', 'dd-mm-yyyy'), null, 1, 'admin', 'qweqweqweqweqwe', 5);
insert into QUESTIONS_ANSWER (ID, QUESTION_ID, ANSWER_ID, THUMBSUP_COUNT, DESPISE_COUNT, ANSWER_DATE, ISPUT, SCHOOL_ID, ANSWER_NAME, ANSWER_CONTENT, ANSWER_USERID)
values (6, 20, 20, null, null, to_date('06-05-2017', 'dd-mm-yyyy'), null, 1, 'admin', '����Ƶ', 5);
commit;
prompt 6 records loaded
prompt Loading QUESTIONS_CLASS...
prompt Table is empty
prompt Loading TAB_QUESTIONS...
insert into TAB_QUESTIONS (ID, QUESTIONS_CLASS_ID, FILE_PATH, DOUBT, CONTENT, STATUS, SCHOOL_ID, USER_ID, UPDATE_DATE)
values (5, null, null, '�﷨��ôѧϰ', null, 0, 1, 5, to_date('03-05-2017', 'dd-mm-yyyy'));
insert into TAB_QUESTIONS (ID, QUESTIONS_CLASS_ID, FILE_PATH, DOUBT, CONTENT, STATUS, SCHOOL_ID, USER_ID, UPDATE_DATE)
values (20, null, null, '�﷨��ôѧϰ', null, 0, 1, 5, to_date('06-05-2017', 'dd-mm-yyyy'));
commit;
prompt 2 records loaded
prompt Loading TAB_SCHOOL...
insert into TAB_SCHOOL (ID, SCHOOL_NAME, IMAGE_SIZE, SCHOOL_PROFILE, ISDELETE, PASSWORD, IMAGE_PATH)
values (3, '���պ���ְҵ����ѧԺ', '14065', '���պ���ְҵ����ѧԺ��2003��7�¾�����ʡ����������׼���Ͼ�����ѧУ���Ͼ�����ѧУ�ϲ��齨��һ��ȫ������ͨ�ߵ�ԺУ��ѧԺ�����ڽ���ʡ����������Ҫ�������󴬲���ʻ�����󴬲��ֻ�����������������ۿڹ�������ó�ס��������졢�������Ϣ�����Լ�����Ӣ��ȸߵ�ְҵ�����˲š�', 0, '1234', '/static/images/school/20170511091035.jpg');
commit;
prompt 1 records loaded
prompt Loading TEACHER...
insert into TEACHER (ID, NAME, SCHOOL_ID, USER_ID)
values (10, '123123��ʦ', 1, 41);
insert into TEACHER (ID, NAME, SCHOOL_ID, USER_ID)
values (1, '����ʦ', 1, 5);
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
values (41, '123123', '123123', 1, 'ǿǿǿǿ', null, 0, null, 0, null, null, null, 1, null);
insert into USER_INFO (ID, LOGIN_NAME, LOGIN_PWD, TYPE, EMAIL, HEAD_ADDRESS, STATUS, SELF_INTRODUCTION, ISLOGIN, PHONE, QQ, HOBBY, SCHOOL_ID, SEX)
values (21, 'wanglei', 'wanglei', 0, '507832323@qq.com', '/static/images/20170511/ba4d74fde038477f92c4f1c7893642eb.png', 0, '44444', 1, '4444444', 4444444, '44444', 1, 1);
insert into USER_INFO (ID, LOGIN_NAME, LOGIN_PWD, TYPE, EMAIL, HEAD_ADDRESS, STATUS, SELF_INTRODUCTION, ISLOGIN, PHONE, QQ, HOBBY, SCHOOL_ID, SEX)
values (5, 'admin', 'admin', 0, '507832323@qq.com', '/static/images/20170428/194348571d7d4959a15b5e31283ee0b2.png', 0, '��123', 1, '15366161339', 507832323, '��', 1, 1);
commit;
prompt 3 records loaded
prompt Loading USER_MOOD...
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 6);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '������������', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 2);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 7);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 8);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 9);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 10);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 11);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 13);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 14);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 15);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....', to_date('02-05-2017', 'dd-mm-yyyy'), 1, 16);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '�X�X�X�X�X�X', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 17);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, 'ȥȥȥȥȥ', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 18);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....����������������������������������������������', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 19);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '����һ��....��������������������', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 20);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '��Æ�Ո��', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 21);
insert into USER_MOOD (USER_ID, CONTENT, UPDATE_DATE, SCHOOL_ID, ID)
values (5, '������', to_date('03-05-2017', 'dd-mm-yyyy'), 1, 22);
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
values (1, 5, to_date('11-05-2017', 'dd-mm-yyyy'), 1, 5, '�����1111111111111111111111111111111111');
insert into USER_WORDS (ID, MESSAGE_SIDE_ID, UPDATE_DATE, SCHOOL_ID, USER_ID, WORDS)
values (2, 5, to_date('23-05-2017', 'dd-mm-yyyy'), 1, 5, '��˹��');
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
values ('admin', '����Ա', '12', '����', '1', to_date('06-04-2017', 'dd-mm-yyyy'), '1', 'admin');
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
