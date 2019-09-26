use jiuzhangquanzhanke;

CREATE TABLE course (
id bigint(20) NOT NULL,
course_name varchar(100) NOT NULL, course_location varchar(30) NOT NULL, course_content varchar(200) NOT NULL,
teacher_id bigint(10) NOT NULL, PRIMARY KEY (id),
UNIQUE KEY `UK_course_name` (course_name)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

CREATE TABLE user_course(
id bigint(20) NOT NULL,
user_id bigint(20) NOT NULL,
course_id bigint(20) NOT NULL,
PRIMARY KEY(id),
CONSTRAINT FK_user_id_user_id FOREIGN KEY (user_id) REFERENCES jhi_user (id),
CONSTRAINT FK_course_id_course_id FOREIGN KEY (course_id) REFERENCES course (id))
ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;