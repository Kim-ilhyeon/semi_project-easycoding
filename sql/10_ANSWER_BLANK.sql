-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
USE `project_easycoding`;

CREATE TABLE IF NOT EXISTS `answer_blank` (
    `answer_id` bigint NOT NULL AUTO_INCREMENT,
    `quiz_id` bigint NOT NULL,
    `correct_text` varchar(127) NOT NULL,
    `order_number` int2 NOT NULL,
    PRIMARY KEY (`answer_id`),
    CONSTRAINT `fk_answer_blank_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`)
);