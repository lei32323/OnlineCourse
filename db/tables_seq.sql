---------------------------------------------
-- Export file for user ONLINECOURSE       --
-- Created by wang on 2017-05-13, 01:23:18 --
---------------------------------------------

spool tables_seq.log

prompt
prompt Creating table COURSE
prompt =====================
prompt
create table ONLINECOURSE.COURSE
(
  ID                      NUMBER not null,
  NAME                    VARCHAR2(100),
  CLASS_ID                NUMBER,
  ISDELETE                NUMBER default 0,
  COURSE_COVER            VARCHAR2(1000),
  COURSE_SUMMARY          VARCHAR2(4000),
  CERTIFICATE_REQUIREMENT VARCHAR2(4000),
  KNOWLEDGE               VARCHAR2(4000),
  OUTLINE                 VARCHAR2(4000),
  REMARKS                 VARCHAR2(2000),
  SCHOOL_ID               NUMBER default 1,
  TIMESUM                 VARCHAR2(2000) default '00:00',
  UPDATE_DATE             DATE,
  TEACHER_ID              NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.COURSE
  is '�γ̱�';
comment on column ONLINECOURSE.COURSE.ID
  is '���';
comment on column ONLINECOURSE.COURSE.NAME
  is '�γ�����';
comment on column ONLINECOURSE.COURSE.CLASS_ID
  is '����������';
comment on column ONLINECOURSE.COURSE.ISDELETE
  is '�Ƿ�ɾ��(0:δɾ�� 1��ɾ��)';
comment on column ONLINECOURSE.COURSE.COURSE_COVER
  is '�γ̷���';
comment on column ONLINECOURSE.COURSE.COURSE_SUMMARY
  is '�γ̸���';
comment on column ONLINECOURSE.COURSE.CERTIFICATE_REQUIREMENT
  is '֤��Ҫ��';
comment on column ONLINECOURSE.COURSE.KNOWLEDGE
  is 'Ԥ��֪ʶ';
comment on column ONLINECOURSE.COURSE.OUTLINE
  is '�ڿδ��';
comment on column ONLINECOURSE.COURSE.REMARKS
  is '��ע����ǰ�γ̵�˵����';
comment on column ONLINECOURSE.COURSE.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.COURSE.TIMESUM
  is '��ʱ��';
comment on column ONLINECOURSE.COURSE.UPDATE_DATE
  is '�޸�����';
comment on column ONLINECOURSE.COURSE.TEACHER_ID
  is '�ڿ���ʦ';
alter table ONLINECOURSE.COURSE
  add constraint PK_COURSE primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table COURSE_CLASS
prompt ===========================
prompt
create table ONLINECOURSE.COURSE_CLASS
(
  ID            NUMBER not null,
  COURSE_NAME   VARCHAR2(100),
  UPPERLEVEL_ID NUMBER,
  ISDELETE      NUMBER default 0,
  SCHOOL_ID     NUMBER default 1
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.COURSE_CLASS
  is '�γ̷����';
comment on column ONLINECOURSE.COURSE_CLASS.ID
  is '���';
comment on column ONLINECOURSE.COURSE_CLASS.COURSE_NAME
  is '��������';
comment on column ONLINECOURSE.COURSE_CLASS.UPPERLEVEL_ID
  is '��һ������';
comment on column ONLINECOURSE.COURSE_CLASS.ISDELETE
  is '�Ƿ�ɾ����0��δɾ�� 1��ɾ����';
comment on column ONLINECOURSE.COURSE_CLASS.SCHOOL_ID
  is 'ѧУ���';
alter table ONLINECOURSE.COURSE_CLASS
  add constraint PK_COURSE_CLASS primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table COURSE_TEACHER
prompt =============================
prompt
create table ONLINECOURSE.COURSE_TEACHER
(
  COURSE_ID  NUMBER not null,
  TEACHER_ID NUMBER,
  SCHOOL_ID  NUMBER default 1
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.COURSE_TEACHER
  is '�γ̶�Ӧ��ʦ��';
comment on column ONLINECOURSE.COURSE_TEACHER.COURSE_ID
  is '�γ̱��';
comment on column ONLINECOURSE.COURSE_TEACHER.TEACHER_ID
  is '������ʦ���';
comment on column ONLINECOURSE.COURSE_TEACHER.SCHOOL_ID
  is 'ѧУ���';
alter table ONLINECOURSE.COURSE_TEACHER
  add constraint PK_COURSE_TEACHER primary key (COURSE_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table COURSE_USER_NOTE
prompt ===============================
prompt
create table ONLINECOURSE.COURSE_USER_NOTE
(
  ID          NUMBER not null,
  VEDIO_ID    NUMBER,
  USER_ID     NUMBER,
  FILE_PATH   VARCHAR2(1000),
  SCHOOL_ID   NUMBER default 1,
  UPDATE_DATE DATE,
  COURSE_NAME VARCHAR2(200),
  VEDIO_NAME  VARCHAR2(200),
  NOTE_NAME   VARCHAR2(200),
  HOUZHUI     VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.COURSE_USER_NOTE
  is '�γ��û��ʼ�';
comment on column ONLINECOURSE.COURSE_USER_NOTE.ID
  is '���';
comment on column ONLINECOURSE.COURSE_USER_NOTE.VEDIO_ID
  is '��Ƶ���';
comment on column ONLINECOURSE.COURSE_USER_NOTE.USER_ID
  is '�û����';
comment on column ONLINECOURSE.COURSE_USER_NOTE.FILE_PATH
  is '�ʼǵ�ַ';
comment on column ONLINECOURSE.COURSE_USER_NOTE.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.COURSE_USER_NOTE.UPDATE_DATE
  is '�ϴ�ʱ��';
comment on column ONLINECOURSE.COURSE_USER_NOTE.COURSE_NAME
  is '�γ�����';
comment on column ONLINECOURSE.COURSE_USER_NOTE.VEDIO_NAME
  is '��Ƶ����';
comment on column ONLINECOURSE.COURSE_USER_NOTE.NOTE_NAME
  is '�ʼ�����';
comment on column ONLINECOURSE.COURSE_USER_NOTE.HOUZHUI
  is '�ʼ��ļ���׺';
alter table ONLINECOURSE.COURSE_USER_NOTE
  add constraint PK_COURSE_USER_NOTE primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table COURSE_VIDEO
prompt ===========================
prompt
create table ONLINECOURSE.COURSE_VIDEO
(
  ID            NUMBER not null,
  COURSE_ID     NUMBER,
  VIDEOPATH     VARCHAR2(2000),
  CREATIME      DATE,
  VIDEOLONG     NUMBER,
  TOTAL         NUMBER default 0,
  COMMENT_COUNT NUMBER default 0,
  SCHOOL_ID     NUMBER default 1,
  NAME          VARCHAR2(200),
  FENGMIAN      VARCHAR2(2000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.COURSE_VIDEO
  is '�γ̶�Ӧ��Ƶ��';
comment on column ONLINECOURSE.COURSE_VIDEO.ID
  is '���';
comment on column ONLINECOURSE.COURSE_VIDEO.COURSE_ID
  is '�γ̱��';
comment on column ONLINECOURSE.COURSE_VIDEO.VIDEOPATH
  is '��Ƶ��ַ';
comment on column ONLINECOURSE.COURSE_VIDEO.CREATIME
  is '����ʱ��';
comment on column ONLINECOURSE.COURSE_VIDEO.VIDEOLONG
  is '��Ƶʱ��';
comment on column ONLINECOURSE.COURSE_VIDEO.TOTAL
  is '���Ŵ���';
comment on column ONLINECOURSE.COURSE_VIDEO.COMMENT_COUNT
  is '���۴���';
comment on column ONLINECOURSE.COURSE_VIDEO.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.COURSE_VIDEO.NAME
  is '����';
comment on column ONLINECOURSE.COURSE_VIDEO.FENGMIAN
  is '��Ƶ����';
alter table ONLINECOURSE.COURSE_VIDEO
  add constraint PK_COURSE_VIDEO primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DEGREE
prompt =====================
prompt
create table ONLINECOURSE.DEGREE
(
  ID       NUMBER not null,
  NAME     VARCHAR2(100),
  ISDELETE NUMBER default 0
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.DEGREE
  is 'ѧλ��';
comment on column ONLINECOURSE.DEGREE.ID
  is '���';
comment on column ONLINECOURSE.DEGREE.NAME
  is '����';
comment on column ONLINECOURSE.DEGREE.ISDELETE
  is '�Ƿ�ɾ��';
alter table ONLINECOURSE.DEGREE
  add constraint PK_DEGREE primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table QUESTIONS_ANSWER
prompt ===============================
prompt
create table ONLINECOURSE.QUESTIONS_ANSWER
(
  ID             NUMBER not null,
  QUESTION_ID    NUMBER,
  ANSWER_ID      NUMBER,
  THUMBSUP_COUNT NUMBER,
  DESPISE_COUNT  NUMBER,
  ANSWER_DATE    DATE,
  ISPUT          NUMBER,
  SCHOOL_ID      NUMBER default 1,
  ANSWER_NAME    VARCHAR2(200),
  ANSWER_CONTENT VARCHAR2(2000),
  ANSWER_USERID  NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.QUESTIONS_ANSWER
  is '�������';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.ID
  is '���';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.QUESTION_ID
  is '����ı�';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.ANSWER_ID
  is '�ش�ı��';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.THUMBSUP_COUNT
  is '���޸���';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.DESPISE_COUNT
  is '���Ӹ���';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.ANSWER_DATE
  is '�ش������';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.ISPUT
  is '�Ƿ���������';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.ANSWER_NAME
  is '�ش��˵�����';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.ANSWER_CONTENT
  is '�ش������';
comment on column ONLINECOURSE.QUESTIONS_ANSWER.ANSWER_USERID
  is '�ش��˵ı��';
alter table ONLINECOURSE.QUESTIONS_ANSWER
  add constraint PK_QUESTIONS_ANSWER primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table QUESTIONS_CLASS
prompt ==============================
prompt
create table ONLINECOURSE.QUESTIONS_CLASS
(
  ID        NUMBER not null,
  NAME      VARCHAR2(200),
  ISDELETE  NUMBER,
  SCHOOL_ID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ONLINECOURSE.QUESTIONS_CLASS
  is '��������';
comment on column ONLINECOURSE.QUESTIONS_CLASS.ID
  is '���';
comment on column ONLINECOURSE.QUESTIONS_CLASS.NAME
  is '��������';
comment on column ONLINECOURSE.QUESTIONS_CLASS.ISDELETE
  is '�Ƿ�ɾ��';
comment on column ONLINECOURSE.QUESTIONS_CLASS.SCHOOL_ID
  is 'ѧУ���';
alter table ONLINECOURSE.QUESTIONS_CLASS
  add constraint PK_QUESTIONS_CLASS primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TAB_QUESTIONS
prompt ============================
prompt
create table ONLINECOURSE.TAB_QUESTIONS
(
  ID                 NUMBER not null,
  QUESTIONS_CLASS_ID NUMBER,
  FILE_PATH          VARCHAR2(1000),
  DOUBT              VARCHAR2(2000),
  CONTENT            VARCHAR2(2000),
  STATUS             NUMBER default 0,
  SCHOOL_ID          NUMBER default 1,
  USER_ID            NUMBER,
  UPDATE_DATE        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.TAB_QUESTIONS
  is '���������';
comment on column ONLINECOURSE.TAB_QUESTIONS.ID
  is '���';
comment on column ONLINECOURSE.TAB_QUESTIONS.QUESTIONS_CLASS_ID
  is '�����������';
comment on column ONLINECOURSE.TAB_QUESTIONS.FILE_PATH
  is '���ʸ���';
comment on column ONLINECOURSE.TAB_QUESTIONS.DOUBT
  is '����';
comment on column ONLINECOURSE.TAB_QUESTIONS.CONTENT
  is '���ⲹ��';
comment on column ONLINECOURSE.TAB_QUESTIONS.STATUS
  is '����״̬��0��δ��� 1�����';
comment on column ONLINECOURSE.TAB_QUESTIONS.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.TAB_QUESTIONS.USER_ID
  is '�û����';
comment on column ONLINECOURSE.TAB_QUESTIONS.UPDATE_DATE
  is '����';
alter table ONLINECOURSE.TAB_QUESTIONS
  add constraint PK_TAB_QUESTIONS primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TAB_SCHOOL
prompt =========================
prompt
create table ONLINECOURSE.TAB_SCHOOL
(
  ID             NUMBER not null,
  SCHOOL_NAME    VARCHAR2(100),
  IMAGE_SIZE     VARCHAR2(1000),
  SCHOOL_PROFILE VARCHAR2(1000),
  ISDELETE       NUMBER default 0,
  PASSWORD       VARCHAR2(100),
  IMAGE_PATH     VARCHAR2(2000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.TAB_SCHOOL
  is 'ѧУ��Ϣ��';
comment on column ONLINECOURSE.TAB_SCHOOL.ID
  is '����';
comment on column ONLINECOURSE.TAB_SCHOOL.SCHOOL_NAME
  is '����';
comment on column ONLINECOURSE.TAB_SCHOOL.IMAGE_SIZE
  is 'ͼƬ��С';
comment on column ONLINECOURSE.TAB_SCHOOL.SCHOOL_PROFILE
  is 'ѧУ����';
comment on column ONLINECOURSE.TAB_SCHOOL.ISDELETE
  is '�Ƿ�ɾ��';
comment on column ONLINECOURSE.TAB_SCHOOL.PASSWORD
  is '����';
comment on column ONLINECOURSE.TAB_SCHOOL.IMAGE_PATH
  is '�ļ���ַ';
alter table ONLINECOURSE.TAB_SCHOOL
  add constraint PK_TAB_SCHOOL primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEACHER
prompt ======================
prompt
create table ONLINECOURSE.TEACHER
(
  ID        NUMBER not null,
  NAME      VARCHAR2(100),
  SCHOOL_ID NUMBER default 1,
  USER_ID   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.TEACHER
  is '��ʦ��';
comment on column ONLINECOURSE.TEACHER.ID
  is '���';
comment on column ONLINECOURSE.TEACHER.NAME
  is '����';
comment on column ONLINECOURSE.TEACHER.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.TEACHER.USER_ID
  is '�û����';
alter table ONLINECOURSE.TEACHER
  add constraint PK_TEACHER primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEACHER_DEGREE
prompt =============================
prompt
create table ONLINECOURSE.TEACHER_DEGREE
(
  TEACHER_ID NUMBER not null,
  DEGREE_ID  NUMBER,
  SCHOOL_ID  NUMBER default 1
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.TEACHER_DEGREE
  is '��ʦ��ѧλ��ϵ��';
comment on column ONLINECOURSE.TEACHER_DEGREE.TEACHER_ID
  is '��ʦ���';
comment on column ONLINECOURSE.TEACHER_DEGREE.DEGREE_ID
  is 'ѧλ���';
comment on column ONLINECOURSE.TEACHER_DEGREE.SCHOOL_ID
  is 'ѧУ���';
alter table ONLINECOURSE.TEACHER_DEGREE
  add constraint PK_TEACHER_DEGREE primary key (TEACHER_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEST_PAPER
prompt =========================
prompt
create table ONLINECOURSE.TEST_PAPER
(
  ID        NUMBER not null,
  NAME      VARCHAR2(100),
  COURSE_ID NUMBER,
  SUBJECT   VARCHAR2(4000),
  options   VARCHAR2(100),
  ANSWER    VARCHAR2(4000),
  ISDELETE  NUMBER,
  SCHOOL_ID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ONLINECOURSE.TEST_PAPER
  is '����';
comment on column ONLINECOURSE.TEST_PAPER.ID
  is '���';
comment on column ONLINECOURSE.TEST_PAPER.NAME
  is '����';
comment on column ONLINECOURSE.TEST_PAPER.COURSE_ID
  is '�����Ӧ�Ŀγ�';
comment on column ONLINECOURSE.TEST_PAPER.SUBJECT
  is '��Ŀ';
comment on column ONLINECOURSE.TEST_PAPER.options
  is 'ѡ�A:1 B:2 C:3 D:4��';
comment on column ONLINECOURSE.TEST_PAPER.ANSWER
  is '��';
comment on column ONLINECOURSE.TEST_PAPER.ISDELETE
  is '�Ƿ�ɾ����0��δɾ��  1��ɾ����';
comment on column ONLINECOURSE.TEST_PAPER.SCHOOL_ID
  is 'ѧУ���';
alter table ONLINECOURSE.TEST_PAPER
  add constraint PK_TEST_PAPER primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table USER_COURSE
prompt ==========================
prompt
create table ONLINECOURSE.USER_COURSE
(
  USER_ID   NUMBER not null,
  COURSE_ID NUMBER,
  STATUS    NUMBER,
  ISDELETE  NUMBER,
  SCHOOL_ID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ONLINECOURSE.USER_COURSE
  is 'ѧ���Ϳγ�֮��Ĺ�ϵ��';
comment on column ONLINECOURSE.USER_COURSE.USER_ID
  is '�û����';
comment on column ONLINECOURSE.USER_COURSE.COURSE_ID
  is '�γ̱��';
comment on column ONLINECOURSE.USER_COURSE.STATUS
  is '�ղ�״̬��0���Ѷ���1���������⣻2���ղأ�';
comment on column ONLINECOURSE.USER_COURSE.ISDELETE
  is '�Ƿ�ɾ����0��δɾ����1��ɾ����';
comment on column ONLINECOURSE.USER_COURSE.SCHOOL_ID
  is 'ѧУ���';
alter table ONLINECOURSE.USER_COURSE
  add constraint PK_USER_COURSE primary key (USER_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table USER_HISTORYTEST_PAPER
prompt =====================================
prompt
create table ONLINECOURSE.USER_HISTORYTEST_PAPER
(
  USER_ID     NUMBER not null,
  TEST_PAPER  NUMBER,
  SCORE       NUMBER,
  TOTAL       NUMBER,
  ERROR_COUNT NUMBER,
  ERRORS      VARCHAR2(1000),
  ISDELETE    NUMBER,
  SCHOOL_ID   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ONLINECOURSE.USER_HISTORYTEST_PAPER
  is 'ѧ��������ʷ��';
comment on column ONLINECOURSE.USER_HISTORYTEST_PAPER.USER_ID
  is 'ѧ�����';
comment on column ONLINECOURSE.USER_HISTORYTEST_PAPER.TEST_PAPER
  is '������';
comment on column ONLINECOURSE.USER_HISTORYTEST_PAPER.SCORE
  is '�ɼ�';
comment on column ONLINECOURSE.USER_HISTORYTEST_PAPER.TOTAL
  is '������';
comment on column ONLINECOURSE.USER_HISTORYTEST_PAPER.ERROR_COUNT
  is '������Ŀ����';
comment on column ONLINECOURSE.USER_HISTORYTEST_PAPER.ERRORS
  is '�������Ŀ��� 1,2,3,4,5';
comment on column ONLINECOURSE.USER_HISTORYTEST_PAPER.ISDELETE
  is '�Ƿ�ɾ����0��δɾ��  1��ɾ����';
comment on column ONLINECOURSE.USER_HISTORYTEST_PAPER.SCHOOL_ID
  is 'ѧУ���';
alter table ONLINECOURSE.USER_HISTORYTEST_PAPER
  add constraint PK_USER_HISTORYTEST_PAPER primary key (USER_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table USER_INFO
prompt ========================
prompt
create table ONLINECOURSE.USER_INFO
(
  ID                NUMBER not null,
  LOGIN_NAME        VARCHAR2(50),
  LOGIN_PWD         VARCHAR2(100),
  TYPE              NUMBER,
  EMAIL             VARCHAR2(100),
  HEAD_ADDRESS      VARCHAR2(100),
  STATUS            NUMBER default 0,
  SELF_INTRODUCTION VARCHAR2(2000),
  ISLOGIN           NUMBER,
  PHONE             NVARCHAR2(32),
  QQ                NUMBER,
  HOBBY             VARCHAR2(2000),
  SCHOOL_ID         NUMBER default 1,
  SEX               NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.USER_INFO
  is '�û���Ϣ��';
comment on column ONLINECOURSE.USER_INFO.ID
  is '���

';
comment on column ONLINECOURSE.USER_INFO.LOGIN_NAME
  is '��¼��
';
comment on column ONLINECOURSE.USER_INFO.LOGIN_PWD
  is '����
';
comment on column ONLINECOURSE.USER_INFO.TYPE
  is '���ͣ�0��ѧ�� 1����ʦ��
';
comment on column ONLINECOURSE.USER_INFO.EMAIL
  is '����
';
comment on column ONLINECOURSE.USER_INFO.HEAD_ADDRESS
  is 'ͷ���ַ
';
comment on column ONLINECOURSE.USER_INFO.STATUS
  is 'ѧԱ��֤״̬(0:δ��֤ 1����֤)
';
comment on column ONLINECOURSE.USER_INFO.SELF_INTRODUCTION
  is '���˽���';
comment on column ONLINECOURSE.USER_INFO.ISLOGIN
  is '�Ƿ�����
';
comment on column ONLINECOURSE.USER_INFO.PHONE
  is '�ֻ���
';
comment on column ONLINECOURSE.USER_INFO.QQ
  is 'QQ
';
comment on column ONLINECOURSE.USER_INFO.HOBBY
  is '��Ȥ����
';
comment on column ONLINECOURSE.USER_INFO.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.USER_INFO.SEX
  is '�Ա�';
alter table ONLINECOURSE.USER_INFO
  add constraint PK_USER_INFO primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table USER_MOOD
prompt ========================
prompt
create table ONLINECOURSE.USER_MOOD
(
  USER_ID     NUMBER not null,
  CONTENT     VARCHAR2(2000),
  UPDATE_DATE DATE,
  SCHOOL_ID   NUMBER default 1,
  ID          NUMBER not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.USER_MOOD
  is '�û���Ӧ�����';
comment on column ONLINECOURSE.USER_MOOD.USER_ID
  is '�û����';
comment on column ONLINECOURSE.USER_MOOD.CONTENT
  is '��������';
comment on column ONLINECOURSE.USER_MOOD.UPDATE_DATE
  is '����ʱ��';
comment on column ONLINECOURSE.USER_MOOD.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.USER_MOOD.ID
  is '���';
alter table ONLINECOURSE.USER_MOOD
  add constraint PK_USER_MOOD primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table USER_VEDIO
prompt =========================
prompt
create table ONLINECOURSE.USER_VEDIO
(
  USER_ID     NUMBER not null,
  VEDIO_ID    NUMBER,
  STATUS      NUMBER,
  SCHOOL_ID   NUMBER,
  UPDATE_DATE DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.USER_VEDIO
  is 'ѧ������Ƶ֮���ϵ��';
comment on column ONLINECOURSE.USER_VEDIO.USER_ID
  is 'ѧ�����';
comment on column ONLINECOURSE.USER_VEDIO.VEDIO_ID
  is '��Ƶ���';
comment on column ONLINECOURSE.USER_VEDIO.STATUS
  is '״̬ ������ţ�1  �������Ե� :2  �����ʼǵģ�3';
comment on column ONLINECOURSE.USER_VEDIO.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.USER_VEDIO.UPDATE_DATE
  is '����';

prompt
prompt Creating table USER_WORDS
prompt =========================
prompt
create table ONLINECOURSE.USER_WORDS
(
  ID              NUMBER not null,
  MESSAGE_SIDE_ID NUMBER,
  UPDATE_DATE     DATE,
  SCHOOL_ID       NUMBER default 1,
  USER_ID         NUMBER,
  WORDS           VARCHAR2(2000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.USER_WORDS
  is '�û������Ա�';
comment on column ONLINECOURSE.USER_WORDS.ID
  is '���';
comment on column ONLINECOURSE.USER_WORDS.MESSAGE_SIDE_ID
  is '�����Է����';
comment on column ONLINECOURSE.USER_WORDS.UPDATE_DATE
  is '����ʱ��';
comment on column ONLINECOURSE.USER_WORDS.SCHOOL_ID
  is 'ѧУ���';
comment on column ONLINECOURSE.USER_WORDS.USER_ID
  is '���Է����';
comment on column ONLINECOURSE.USER_WORDS.WORDS
  is '��������';
alter table ONLINECOURSE.USER_WORDS
  add constraint PK_USER_WORDS primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table VOI_COMMENT
prompt ==========================
prompt
create table ONLINECOURSE.VOI_COMMENT
(
  ID          NUMBER not null,
  COURSE_ID   NUMBER,
  USER_ID     NUMBER,
  CONTENT     VARCHAR2(2000),
  FORWARD     NUMBER,
  REPLY       NUMBER,
  UPDATE_DATE DATE,
  SCHOOL_ID   NUMBER default 1
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table ONLINECOURSE.VOI_COMMENT
  is '�γ���Ƶ���۱�';
comment on column ONLINECOURSE.VOI_COMMENT.ID
  is '���';
comment on column ONLINECOURSE.VOI_COMMENT.COURSE_ID
  is '�γ̱��';
comment on column ONLINECOURSE.VOI_COMMENT.USER_ID
  is 'ѧ�����״̬Ϊ0';
comment on column ONLINECOURSE.VOI_COMMENT.CONTENT
  is '��������';
comment on column ONLINECOURSE.VOI_COMMENT.FORWARD
  is 'ת����Ӧ�ı��';
comment on column ONLINECOURSE.VOI_COMMENT.REPLY
  is '�ظ���Ӧ�ı��';
comment on column ONLINECOURSE.VOI_COMMENT.UPDATE_DATE
  is '����';
comment on column ONLINECOURSE.VOI_COMMENT.SCHOOL_ID
  is 'ѧУ���';
alter table ONLINECOURSE.VOI_COMMENT
  add constraint PK_COMMENT primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence COURSE_SEQ
prompt ============================
prompt
create sequence ONLINECOURSE.COURSE_SEQ
minvalue 1
maxvalue 9999999
start with 141
increment by 1
cache 20;

prompt
prompt Creating sequence COURSE_VIDEO_SEQ
prompt ==================================
prompt
create sequence ONLINECOURSE.COURSE_VIDEO_SEQ
minvalue 10
maxvalue 99999999
start with 50
increment by 1
cache 20;

prompt
prompt Creating sequence QUESTIONS_ANSWER_SEQ
prompt ======================================
prompt
create sequence ONLINECOURSE.QUESTIONS_ANSWER_SEQ
minvalue 1
maxvalue 9999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence TAB_QUESTIONS_SEQ
prompt ===================================
prompt
create sequence ONLINECOURSE.TAB_QUESTIONS_SEQ
minvalue 0
maxvalue 999999
start with 40
increment by 1
cache 20;

prompt
prompt Creating sequence TAB_SCHOOL_SEQ
prompt ================================
prompt
create sequence ONLINECOURSE.TAB_SCHOOL_SEQ
minvalue 1
maxvalue 999999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence TEACHER_SEQ
prompt =============================
prompt
create sequence ONLINECOURSE.TEACHER_SEQ
minvalue 10
maxvalue 999999
start with 30
increment by 1
cache 20;

prompt
prompt Creating sequence USER_INFO_SEQ
prompt ===============================
prompt
create sequence ONLINECOURSE.USER_INFO_SEQ
minvalue 1
maxvalue 9999
start with 61
increment by 1
cache 20;

prompt
prompt Creating sequence USER_MOOD_SEQ
prompt ===============================
prompt
create sequence ONLINECOURSE.USER_MOOD_SEQ
minvalue 1
maxvalue 9999
start with 41
increment by 1
cache 20;

prompt
prompt Creating sequence USER_WORDS_SEQ
prompt ================================
prompt
create sequence ONLINECOURSE.USER_WORDS_SEQ
minvalue 1
maxvalue 9999
start with 21
increment by 1
cache 20;

prompt
prompt Creating sequence VOI_COMMENT_SEQ
prompt =================================
prompt
create sequence ONLINECOURSE.VOI_COMMENT_SEQ
minvalue 100
maxvalue 99999
start with 140
increment by 1
cache 20;


spool off
