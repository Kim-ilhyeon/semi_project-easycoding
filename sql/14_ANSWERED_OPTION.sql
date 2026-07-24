-- ERDCloud diagram: https://www.erdcloud.com/d/EYbqxh3Xw8wZuHfwM
USE `project_easycoding`;

CREATE TABLE IF NOT EXISTS `answered_option` (
    `answered_id`  bigint NOT NULL AUTO_INCREMENT,
    `history_id`   bigint NOT NULL,
    `chose_option` int2   NOT NULL,
    PRIMARY KEY (`answered_id`),
    CONSTRAINT `fk_answered_option_history_id` FOREIGN KEY (`history_id`) REFERENCES `member_quiz_history` (`history_id`)
);