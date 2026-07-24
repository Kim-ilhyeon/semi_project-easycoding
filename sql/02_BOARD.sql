-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
USE `project_easycoding`;

-- 게시판 카테고리용 테이블
-- ex) 자유게시판, 질문게시판 등등
CREATE TABLE IF NOT EXISTS `board` (
	`board_id` int2 NOT NULL AUTO_INCREMENT,
	`name` varchar(31) NOT NULL,
	PRIMARY KEY (`board_id`)
);