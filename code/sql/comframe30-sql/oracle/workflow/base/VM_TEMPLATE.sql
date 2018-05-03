/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     2011/7/15 11:11:40                           */
/*==============================================================*/


/*==============================================================*/
/* Table: VM_TEMPLATE                                           */
/*==============================================================*/
create table VM_TEMPLATE  (
   TEMPLATE_TAG         VARCHAR2(255)                   not null,
   TEMPLATE_TYPE        VARCHAR2(255),
   LABEL                VARCHAR2(255),
   QUEUE_ID             VARCHAR2(5)                     not null,
   ENGINE_TYPE          VARCHAR2(255),
   PUBLISH              CHAR(1),
   CREATE_STAFF         VARCHAR2(255),
   CREATE_DATE          DATE,
   STATE_DATE           DATE,
   STATE                CHAR(1),
   REMARK               VARCHAR2(255)
);

comment on table VM_TEMPLATE is
'����ģ��';

comment on column VM_TEMPLATE.TEMPLATE_TAG is
'����ģ����';

comment on column VM_TEMPLATE.TEMPLATE_TYPE is
'����ģ�����ͣ�workflow,process';

comment on column VM_TEMPLATE.LABEL is
'����ģ������';

comment on column VM_TEMPLATE.QUEUE_ID is
'���̶���';

comment on column VM_TEMPLATE.ENGINE_TYPE is
'��������';

comment on column VM_TEMPLATE.PUBLISH is
'����ģʽ(Y:���ļ���ʽ,N:�ļ���ʽ)';

comment on column VM_TEMPLATE.CREATE_STAFF is
'������';

comment on column VM_TEMPLATE.CREATE_DATE is
'����ʱ��';

comment on column VM_TEMPLATE.STATE_DATE is
'״̬�仯ʱ��';

comment on column VM_TEMPLATE.STATE is
'״̬:U:��Ч,E:��Ч';

comment on column VM_TEMPLATE.REMARK is
'��ע';

alter table VM_TEMPLATE
   add constraint PK_VM_TEMPLATE primary key (TEMPLATE_TAG);
