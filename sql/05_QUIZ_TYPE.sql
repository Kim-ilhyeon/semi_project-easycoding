-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
USE `project_easycoding`;

-- 퀴즈 타입 테이블
-- 초기에는 객관식, 빈칸채우기 두개밖에 없음
CREATE TABLE IF NOT EXISTS `quiz_type` (
	`type_id` int2 NOT NULL AUTO_INCREMENT,
	`type_name` varchar(15) NOT NULL,
	PRIMARY KEY (`type_id`)
);