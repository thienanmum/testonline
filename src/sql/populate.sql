 
INSERT INTO credentials(username,password,enabled) VALUES ('guest','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', TRUE);
  
INSERT INTO authority (id,username, authority) VALUES (1,'guest', 'ROLE_STUDENT');
INSERT INTO authority (id,username, authority) VALUES (2,'admin', 'ROLE_PROFESSOR');
INSERT INTO authority (id,username, authority) VALUES (3,'admin', 'ROLE_STUDENT');
 
INSERT INTO  user(id,firstname, lastname,age,title,membernumber, member_id) VALUES (1,'Curious','George',12,'Boy Monkey', 8754,'admin');
INSERT INTO user(id,firstname, lastname,age,title,membernumber,member_id) VALUES (2,'Allen','Rench',123,'Torque Master', 8733,'guest');


insert into subject(id, name) values (1, "English")
insert into subject(id, name) values(2, "Maths")
insert into subject(id, name) values(3, "Physics")


/* Insert default questions */
insert into question(id, questionId, subject, description, level, type, imagePath) values (1, "GEN-01", 1, "What is your dream?", "Easy", "FreeText", "");

insert into question(id, questionId, subject, description, level, type, imagePath) values (2, "GEN-02", 2, "Calculate the area of a square of 4 metre edge", "Easy", "SingleChoice");
insert into questionchoice(question_id,description,displayOrder, isCorrect) values(2, "8", 1, false);
insert into questionchoice(question_id,description,displayOrder, isCorrect) values(2, "16", 2, true);

insert into question(id, questionId, subject, description, level, type, imagePath) values (3, "GEN-03", 3,"How long is from here to the sun?", "Medium", "MultipleChoices", "");
insert into questionchoice(question_id,description,displayOrder, isCorrect) values(3, "200k miles", 1, false);
insert into questionchoice(question_id,description,displayOrder, isCorrect) values(3, "300k miles", 2, true);
insert into questionchoice(question_id,description,displayOrder, isCorrect) values(3, "400k km", 3, true);

insert into exam(id, examId, subject) values (1, "WAA-Dec2017-MidTerm", 3);
insert into examQuestion(exam_id, question_id, questionNumber) values(1, 1, 1);
insert into examQuestion(exam_id, question_id, questionNumber) values(1, 2, 2);
insert into examQuestion(exam_id, question_id, questionNumber) values(1, 3, 3);
				
