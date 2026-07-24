-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
USE `project_easycoding`;

-- 사용자 즐겨찾기 테이블
-- 사용자가 선호하는 카테고리를 저장하는 용도
CREATE TABLE IF NOT EXISTS `member_and_quiz_category` (
	`member_id` bigint NOT NULL,
	`category_id` int2 NOT NULL,
	PRIMARY KEY (`member_id`, `category_id`),
	CONSTRAINT `fk_member_and_quiz_category_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
	CONSTRAINT `fk_member_and_quiz_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `quiz_category` (`category_id`)
);