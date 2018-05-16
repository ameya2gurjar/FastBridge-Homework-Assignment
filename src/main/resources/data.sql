-- Add schools
INSERT INTO SCHOOL (school_id, district_id, school_name, state_short_code) VALUES (1, 1, 'FAST Elementary', 'MN');
INSERT INTO SCHOOL (school_id, district_id, school_name, state_short_code) VALUES (2, 2, 'FAST Middle School', 'MN');
INSERT INTO SCHOOL (school_id, district_id, school_name, state_short_code) VALUES (3, 3, 'FAST High School', 'MN');

-- Add classes
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (1, 'KG', 'KGCourse', 1);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (2, 'ONE', 'OneCourse', 1);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (3, 'THREE', 'ThreeCourse', 1);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (4, 'FOUR', 'FourCourse', 1);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (5, 'FIVE', 'FiveCourse', 1);

INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (6, 'SIX', 'SixCourse', 2);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (7, 'SEVEN', 'SevenCourse', 2);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (8, 'EIGHT', 'EightCourse', 2);

INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (9, 'NINE', 'NineCourse', 3);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (10, 'TEN', 'TenCourse', 3);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (11, 'ELEVEN', 'ElevenCourse', 3);
INSERT INTO SCHOOL_CLASS (school_class_id, grade_level, course, school_id) VALUES (12, 'TWELVE', 'TwelveCourse', 3);

-- Add teachers
INSERT INTO TEACHER (teacher_id, first_name, last_name, teacher_email)
VALUES (18935, 'Albert', 'Bond', 'albertbond@district.com');

INSERT INTO TEACHER (teacher_id, first_name, last_name, teacher_email)
VALUES (18936, 'Jessica', 'Seymour', 'jessicas@district.com');

INSERT INTO TEACHER (teacher_id, first_name, last_name, teacher_email)
VALUES (18937, 'Monique', 'White', 'white@district.com');

INSERT INTO TEACHER (teacher_id, first_name, last_name, teacher_email)
VALUES (18938, 'Bill', 'Billy', 'billy@district.com');

INSERT INTO TEACHER (teacher_id, first_name, last_name, teacher_email)
VALUES (18939, 'Jack', 'White', 'jack@district.com');

-- Add teacher enrollments
INSERT INTO TEACHER_CLASS_ENROLLMENT (TEACHER_ID, SCHOOL_CLASS_ID) VALUES (18935, 1);
INSERT INTO TEACHER_CLASS_ENROLLMENT (TEACHER_ID, SCHOOL_CLASS_ID) VALUES (18936, 2);
INSERT INTO TEACHER_CLASS_ENROLLMENT (TEACHER_ID, SCHOOL_CLASS_ID) VALUES (18937, 3);
INSERT INTO TEACHER_CLASS_ENROLLMENT (TEACHER_ID, SCHOOL_CLASS_ID) VALUES (18938, 4);
INSERT INTO TEACHER_CLASS_ENROLLMENT (TEACHER_ID, SCHOOL_CLASS_ID) VALUES (18939, 5);

-- Add students
INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)
VALUES (708045, 'S708045', 'Vincent', 'Vellum');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (707771, 'S707771', 'Bob', 'White');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)
VALUES (701606, 'S701606', 'Mike', 'Thompson');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (701282, 'S701282', 'Irma', 'Tate');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (712034, 'S712034', 'Bill', 'Johnes');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)
VALUES (699118, 'S699118', 'Patti', 'Schilling');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (699072, 'S699072', 'Susan', 'Kruse');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (699559, 'S699559', 'Steve', 'Slater');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)
VALUES (699579, 'S699579', 'Judy', 'Peterson');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)
VALUES (702292, 'S702292', 'Joseph', 'Bethel');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)
VALUES (699645, 'S699645', 'Renee', 'Emerson');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)
VALUES (702262, 'S702262', 'Rocio', 'Villazon');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (709469, 'S709469', 'Ted', 'Christ');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (703831, 'S703831', 'Scott', 'Ardoin');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (704082, 'S704082', 'Tanya', 'Eckert');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (703647, 'S703647', 'Newt', 'Yorker');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (704692, 'S704692', 'Pooja', 'Malani');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME)
VALUES (705130, 'S705130', 'MaryJane', 'White');

INSERT INTO STUDENT (STUDENT_ID, STUDENT_STATE_ID, FIRST_NAME, LAST_NAME) VALUES (705793, 'S705793', 'Janey', 'Jones');

-- Add student enrollments
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (708045, 1);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (707771, 11);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (701606, 2);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (701282, 9);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (712034, 6);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (699118, 3);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (699072, 10);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (699559, 3);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (699579, 4);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (702292, 4);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (699645, 7);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (702262, 5);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (709469, 5);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (703831, 8);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (704082, 1);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (703647, 2);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (704692, 3);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (705130, 12);
INSERT INTO STUDENT_CLASS_ENROLLMENT (STUDENT_ID, SCHOOL_CLASS_ID) VALUES (705793, 5);