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

insert into board(board_no,board_title,board_writer,board_cont,board_date,board_image,board_type) 
		values(board_seq.nextval,'제목','글쓴이','내용',sysdate,null,2)
        
        insert into board(board_no,board_title,board_writer,board_cont,board_date,board_image,board_type) 
		values(board_seq.nextval,'아아','아아','내용',sysdate,null,2)
        
create sequence board_seq
start with 1
increment by 1
nocache;
commit;
select * from board;

select * from(select rowNum rNum, board_no, board_title, board_writer, board_date, board_hit from (select * from board where board_type=2 order by board_no));


commit




select board_seq.nextval from dual;

alter table board modify (board_image varchar2(300));

alter table board drop column board_file;

alter table board add board_writer varchar(38);
alter table board modify board_hit default 0;

create table persistent_logins(
    username varchar2(64) not null -- 회원아이디
    ,series varchar2(64) primary key -- 회원비밀번호
    ,token varchar2(64) not null -- 토큰 정보
    ,last_used timestamp not null -- 로그인 한 날짜 시간
);
