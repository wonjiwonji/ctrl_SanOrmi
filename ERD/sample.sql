-- Sample Data

-- Member
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('mingyeong','1234', '이민경', '', 'dlalsrud0624@naver.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('jiwon','1111', '강지원', '', 'dnflwlq1214@naver.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('jeongyeon','2222', '허정연', '별내3로', 'qazseeszaq3219@gmail.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('jaehwan','3333', '이재환', '', 'never37@naver.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('dlalsrud@naver.com','NAVER', '이민경', '', 'dlalsrud@naver.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('dnflwlq@naver.com','KAKAO', '강지원', '', 'dnflwlq@naver.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('hyerin','4444', '인혜린', '테헤란로 26길 12', 'hyerin0508@naver.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('dlwjddk','5555', '이정아', '', 'dlwjddk@naver.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('hanbit@kakao.com','KAKAO', '김한빛', '', 'hanbit@kakao.com', NOW());
INSERT INTO MEMBER (ID, M_PW, M_NAME, M_ADDRESS , M_EMAIL ,M_REGDATE) VALUES ('jaeho','6666', '이재호', '', 'jaeho@naver.com', NOW());

-- Member Select
SELECT * FROM MEMBER;


-- Board
-- BOARD
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('제목 신박한거 없나요?','ㅈㄱㄴ','jiwon',NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('정연이는 얼짱!','난 너무 이뻐','jeongyeon',NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('생일 축하합니다!','해피벌스데이 투미','mingyeong',NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('오류 고치기 힘들다..','나 힘들어..','jaehawn' ,NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('맛있는 초콜릿!','쿠팡에서 판매중!\r\n 짠!','jaeho',NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('고양이가 젤 좋아','나는 냥신사!','hyerin',NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('나는야 커뮤니티 왕이 될거야','왕비말고 왕!','jeongyeon',NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('나는야 주스될거야','꿀꺽','jeongyeon',NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('나는야 춤을 출거야','ho! hey! 댄싱   머신~','jeonyeon', NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('얘들아 조용히해','언니다 언니','hanbit@kakao.com', NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('아니 나 안경 놓고옴','눈이 안보여! 시력 -3','jiwon', NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('아 커뮤왕 뺏김','쟤 뭐냐..','jiwon', NOW());
INSERT INTO BOARD (B_TITLE,B_CONTENT,B_ID, B_DATE) VALUES('우와! 됐다','난 참 멋있어','jeongyeon',NOW());

-- Board Select
SELECT * FROM BOARD;
SELECT * FROM bcomment;
SELECT count(*) FROM bcomment;

-- BCOMMENT INSERT 
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('jiwon',2,'아 근데 지원이가 더 이쁘지 않나?',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('mingyeong',5,'저 하나 구매하겠습니다',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('dlwjddk',8,'아 멋쟁이토마토는 난데...',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('jaeho',11,'제 안경 빌려드릴까요?',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('jaehawn',6,'야옹~~~',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('jeongyeon',10,'네 언니!',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('jeongyeon',12,'나랑 친구하자!',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('hyerin',4,'잠은 죽어서 자',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('hanbit@kakao.com',3,'불쌍해..',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());
INSERT INTO BCOMMENT (BC_ID, B_NUM,BC_CONTENT,BC_GROUP, BC_DATE) VALUES('jeaho',7,'아 커뮤왕 그거 좋은건가요?',(SELECT COALESCE(MAX(BC_GROUP),0)+1 FROM BCOMMENT AS BC_GROUP),NOW());

-- QnA
SELECT * FROM QNA;
SELECT * FROM QCOMMENT;

-- QnA
INSERT INTO QNA (Q_TITLE,Q_CONTENT,Q_ID, Q_DATE) VALUES('사장님 이거 뭐에요?','이거 QNA 게시판 맞아요?','jiwon',NOW());
INSERT INTO QNA (Q_TITLE,Q_CONTENT,Q_ID, Q_DATE) VALUES('산오르미 자주 묻는 질문','탑 5 ... 1분 후 공개','jiwon',NOW());
INSERT INTO QNA (Q_TITLE,Q_CONTENT,Q_ID, Q_DATE) VALUES('안녕하세요','오늘은 2023년 1월 25일 입니다','jiwon',NOW());
INSERT INTO QNA (Q_TITLE,Q_CONTENT,Q_ID, Q_DATE) VALUES('반가워요 산오르미 이용자 여러분','항상 행복하세요','jiwon',NOW());
INSERT INTO QNA (Q_TITLE,Q_CONTENT,Q_ID, Q_DATE) VALUES('오늘은...','관리자 민경님의 생일입니다','jiwon',NOW());

-- QCOMMENT

INSERT INTO QCOMMENT (QC_ID, Q_NUM,QC_CONTENT,QC_GROUP, QC_DATE) VALUES('admin',3,'네 맞습니다',(SELECT COALESCE(MAX(QC_GROUP),0)+1 FROM QCOMMENT AS QC_GROUP),NOW());
INSERT INTO QCOMMENT (QC_ID, Q_NUM,QC_CONTENT,QC_GROUP, QC_DATE) VALUES('jiwon',4,'아 뭐야',(SELECT COALESCE(MAX(QC_GROUP),0)+1 FROM QCOMMENT AS QC_GROUP),NOW());
INSERT INTO QCOMMENT (QC_ID, Q_NUM,QC_CONTENT,QC_GROUP, QC_DATE) VALUES('admin',5,'알겠습니다.',(SELECT COALESCE(MAX(QC_GROUP),0)+1 FROM QCOMMENT AS QC_GROUP),NOW());
INSERT INTO QCOMMENT (QC_ID, Q_NUM,QC_CONTENT,QC_GROUP, QC_DATE) VALUES('dlwjddk',6,'관리자님도 행복하세요',(SELECT COALESCE(MAX(QC_GROUP),0)+1 FROM QCOMMENT AS QC_GROUP),NOW());
INSERT INTO QCOMMENT (QC_ID, Q_NUM,QC_CONTENT,QC_GROUP, QC_DATE) VALUES('mingyeong',7,'축하해요 민경님',(SELECT COALESCE(MAX(QC_GROUP),0)+1 FROM QCOMMENT AS QC_GROUP),NOW());


-- REPORT
SELECT * FROM REPORT;


 INSERT INTO REPORT (B_NUM, R_ID, R_TARGETID) VALUES(5,'dlwjddk','jaeho');
 INSERT INTO REPORT (B_NUM, R_ID, R_TARGETID) VALUES(10,'mingyeong','hanbit@kakao.com');
 INSERT INTO REPORT (B_NUM, R_ID, R_TARGETID) VALUES(12,'jeongyeon','jiwon');
 INSERT INTO REPORT (B_NUM, R_ID, R_TARGETID) VALUES(1,'jaehawn','jiwon');
 INSERT INTO REPORT (B_NUM, R_ID, R_TARGETID) VALUES(6,'dlwjddk','hyerin');