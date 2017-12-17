 
INSERT INTO credentials(username,password,enabled) VALUES ('guest','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', TRUE);
  
INSERT INTO authority (id,username, authority) VALUES (1,'guest', 'ROLE_USER');
INSERT INTO authority (id,username, authority) VALUES (2,'admin', 'ROLE_ADMIN');
INSERT INTO authority (id,username, authority) VALUES (3,'admin', 'ROLE_USER');
 
INSERT INTO  `MEMBER` (id,firstname, lastname,age,title,membernumber, member_id) VALUES (1,'Curious','George',12,'Boy Monkey', 8754,'admin');
INSERT INTO `MEMBER` (id,firstname, lastname,age,title,membernumber,member_id) VALUES (2,'Allen','Rench',123,'Torque Master', 8733,'guest');

/* Insert default questions */
insert into question(id, questionId, text, sortOrder, type) values (1, "GEN-01", "What is your dream?", 1, "FreeText");

insert into question(id, questionId, text, sortOrder, type) values (2, "GEN-02", "How old are you?", 2, "SingleChoice");
insert into questionchoice(question_id,text,sortOrder, isCorrect) values(2, "Young", 1, false);
insert into questionchoice(question_id,text,sortOrder, isCorrect) values(2, "Old", 2, true);

insert into question(id, questionId, text, sortOrder, type) values (3, "GEN-02","What are your hobby?", 3, "MultipleChoices");
insert into questionchoice(question_id,text,sortOrder, isCorrect) values(3, "Sport", 1, false);
insert into questionchoice(question_id,text,sortOrder, isCorrect) values(3, "Music", 2, true);
insert into questionchoice(question_id,text,sortOrder, isCorrect) values(3, "Game", 3, true);
				
