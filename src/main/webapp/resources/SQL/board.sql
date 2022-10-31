create table board(
    board_no int primary key,
    board_title varchar2(50) not null,
    board_cont varchar2(4000) not null,
    board_type number (10) not null,
    board_image varchar2(50),
    board_hit number(38),
    board_date date,
    board_replycnt number(10), -- 
    board_category varchar2(10)
);
create sequence board_seq
start with 1
increment by 1
nocache;
commit;
select * from board;

select board_seq.nextval from dual;

alter table board add board_writer varchar(38);
alter table board modify board_hit default 0;

create table persistent_logins(
    username varchar2(64) not null -- 회원아이디
    ,series varchar2(64) primary key -- 회원비밀번호
    ,token varchar2(64) not null -- 토큰 정보
    ,last_used timestamp not null -- 로그인 한 날짜 시간
);
