-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
USE `project_easycoding`;

-- 게시글 관련 테이블
-- 삭제요청시 바로 삭제하지 않고, 삭제요청 상태로 변경 후 관리자가 확인 후 삭제
CREATE TABLE IF NOT EXISTS `post` (
    `post_id` bigint NOT NULL AUTO_INCREMENT,
    `member_id` bigint NULL,
    `board_id` int2 NOT NULL,
    `title` varchar(63) NOT NULL,
    `content` text NOT NULL,
    `views` int2 NOT NULL DEFAULT 0,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`post_id`),
    CONSTRAINT `fk_post_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
    CONSTRAINT `fk_post_board_id` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`)
);