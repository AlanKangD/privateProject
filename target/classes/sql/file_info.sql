CREATE TABLE file_info (
	file_no			int(11)			AUTO_INCREMENT		PRIMARY KEY,
	board_no		int(11)			FOREIGN KEY 		NOT NULL,
	file_origin		varchar(100)	NOT NULL,
	file_stored		varchar(100)	NOT NULL,
	file_size		int(11)			NOT NULL,
	file_delete_yn	varchar(100)	NOT NULL,
);