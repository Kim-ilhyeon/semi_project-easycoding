-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
USE `project_easycoding`;

CREATE TABLE IF NOT EXISTS `member_quiz_history` (
	`history_id` bigint NOT NULL AUTO_INCREMENT,
	`member_id` bigint NOT NULL,
	`quiz_id` bigint NOT NULL,
	`exam_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`answered` boolean NOT NULL DEFAULT FALSE,
	`correct` boolean DEFAULT NULL,
	PRIMARY KEY (`history_id`),
	CONSTRAINT `fk_member_quiz_history_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
	CONSTRAINT `fk_member_quiz_history_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`),
    INDEX idx_history_exam_at (exam_at)
);