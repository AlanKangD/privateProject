CREATE TABLE board (
	board_no		int(11)			AUTO_INCREMENT		PRIMARY KEY,
	board_writer	varchar(100)	NOT NULL,
	board_title		varchar(500)	NOT NULL,
	board_content	varchar(1000)	NOT NULL,
	board_feel		varchar(100)	NOT NULL,
	board_sysdate	DATETIME		NOT NULL,
	board_delete_yn	varchar(100)	NOT NULL
);