-- 회원정보 테이블 생성
CREATE TABLE MEMBER (
	id varchar2(50) PRIMARY KEY,
	password varchar2(50) NOT NULL,
	mname varchar2(50) NOT NULL,
	phoneNum varchar2(50) NOT NULL,
	email varchar2(50) NOT NULL,
	point NUMBER,
	paypassword char(6)
)

-- 자유게시판 테이블 생성
create table freeBoard(
	freeNum NUMBER primary key,
	freeTitle varchar2(200) NOT NULL,
	freeWriter varchar2(100) NOT NULL,
	readcnt NUMBER,
	regdte DATE,
	uptdte DATE,
	freeContent varchar2(2000) NOT NULL
)

SELECT * FROM freeBoard

DROP TABLE freeboard;


DROP SEQUENCE freeBoard_seq;

create sequence freeBoard_seq
	start with 1
	minvalue 1
	maxvalue 999999
	increment by 1;

insert into freeBoard values(freeBoard_seq.nextval, '제목1', '작성자1', 0, sysdate, sysdate, '내용1');

/*
	freeBoard 검색

select *
from freeBoard
WHERE 1=1
AND freeTitle LIKE '%' || #{freeTitle} || '%'
AND freeWriter LIKE '%' || #{freeWriter} || '%'
order by regdte desc
*/

UPDATE freeBoard
	SET freeTitle = '제목수정1', 
		freeContent = '내용수정1',
		uptdte = sysdate
WHERE freeNum = 1;

/*
freeBoard 삽입
	
insert into freeBoard
	values(freeBoard_seq.nextval, #{freeTitle}, #{freeWriter}, 0, sysdate, sysdate, #{freeContent})
*/

/*
freeBoard 상세

select *
from freeBoard
where freeNum = #{freeNum}
 */

/*
상세정보 조회 시, 조회수 +1

update freeBoard
set readcnt = readcnt + 1
where freeNum = #{freeNum}
 */

/*
freeBoard 수정
	
UPDATE freeBoard
	SET freeTitle = #{freeTitle}, 
		freeContent = #{freeContent},
		uptdte = sysdate
WHERE freeNum = #{freeNum}
*/

/*
freeBoard 삭제

delete from freeBoard
where freeNum = #{freeNum}
 */

-- 주문 테이블 생성
CREATE TABLE orderTable(
	productNum number,
	id varchar2(50),
	cnt number
)

