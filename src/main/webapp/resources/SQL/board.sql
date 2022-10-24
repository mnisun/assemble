create table board(
    board_no int primary key, -- 게시물 번호
    board_title varchar2(50) not null, -- 게시물 제목
    board_cont varchar2(4000) not null, -- 게시물 내용
    board_type number (10) not null, -- 게시물 타입(자유, faq 등)
    board_image varchar2(50), -- 게시물 첨부 이미지
    board_hit number(38) ,  -- 게시물 조회수
    board_date date, -- 게시날짜
    board_replycnt number(10), -- 댓글 개수
    board_category varchar2(10) -- 게시물 종류
);

alter table board modify board_hit default 0;



commit;

alter table board add board_writer varchar(38)

create sequence board_seq
start with 1
increment by 1
nocache;

select * from board order by board_no asc;

select board_seq.nextval from dual;

insert into board(board_no, board_title, board_cont, board_date, board_hit)
values(1, "제목 테스트 중입니다", "내용 테스트 중입니다", date, 1);