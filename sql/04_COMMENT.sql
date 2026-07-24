-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
USE `project_easycoding`;

-- 댓글 데이블
-- 삭제요청시 바로지우지 않고, delete_at 컬럼을 플래그로 사용
CREATE TABLE IF NOT EXISTS `comment` (
	`comment_id` bigint NOT NULL AUTO_INCREMENT,
	`member_id` bigint,
	`post_id` bigint NOT NULL,
	`parent_id` bigint,
	`content` varchar(255) NOT NULL,
	`created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`deleted_at` timestamp NULL DEFAULT NULL,
	`updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`comment_id`),
	CONSTRAINT `fk_comment_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
	CONSTRAINT `fk_comment_post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
	CONSTRAINT `fk_comment_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `comment` (`comment_id`)
);