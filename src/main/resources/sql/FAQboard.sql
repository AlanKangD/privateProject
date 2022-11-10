CREATE TABLE FAQboard (
	FAQ_no			int(11)			AUTO_INCREMENT		PRIMARY KEY,
	FAQ_writer		varchar(100)	NOT NULL,
	FAQ_title		varchar(1000)	NOT NULL,
	FAQ_content		varchar(5000)	NOT NULL,
	FAQ_select_type	varchar(100)	NOT NULL,
	FAQ_check_secu	varchar(100)	NOT NULL,
	FAQ_pw			varchar(100)	NOT NULL,
	FAQ_reply_ok	varchar(50)		NOT NULL,
	FAQ_sysdate		DATETIME		NOT NULL
);