--SQL Interview Questions and Answers 
--Nth Highest salary by department

--Author: Rohan Suresh
--YouTube: Learning with Rohan 
--Website: https://rohanbs.com

--Execute the following DDLs and DMLs to create the test data
create table emp (
	emp_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	salary INT,
	dept_id INT
);

insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (1,'Halsy','Bodega','hbodega0@drupal.org','Male',25000,6)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (2,'Gabriela','Frankel','gfrankel1@tumblr.com','Genderfluid',32000,6)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (3,'Alon','Moutray Read','amoutrayread2@flickr.com','Non-binary',23000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (4,'Alvin','Gasnell','agasnell3@chronoengine.com','Male',27000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (5,'Jacky','McNern','jmcnern4@youku.com','Genderqueer',23000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (6,'Fanechka','Hartly','fhartly5@pinterest.com','Male',24000,6)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (7,'Floria','Wedderburn','fwedderburn6@ft.com','Male',39000,null)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (8,'Phillip','Hauxwell','phauxwell7@sun.com','Non-binary',21000,6)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (9,'Lise','Blastock','lblastock8@google.ca','Genderqueer',27000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (10,'Yorker','Twinbrow','ytwinbrow9@dell.com','Genderqueer',46000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (11,'Xenos','Sterrie','xsterriea@marriott.com','Genderqueer',30000,7)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (12,'Jeri','Brinded','jbrindedb@skyrock.com','Polygender',42000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (13,'Jerrold','Gietz','jgietzc@gizmodo.com','Genderqueer',26000,null)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (14,'Rene','Gobell','rgobelld@mtv.com','Non-binary',31000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (15,'Saxon','Croley','scroleye@360.cn','Non-binary',22000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (16,'Ora','Burwin','oburwinf@microsoft.com','Agender',43000,8)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (17,'Jerrie','Jailler','jjaillerg@bbb.org','Male',34000,1)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (18,'Mayor','Mucci','mmuccih@sourceforge.net','Agender',25000,1)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (19,'Con','Venny','cvennyi@phpbb.com','Bigender',27000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (20,'Kelsy','Babin','kbabinj@shop-pro.jp','Female',40000,6)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (21,'Onida','Hannen','oohannenk@infoseek.co.jp','Polygender',25000,1)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (22,'Andrea','Ayscough','aayscoughl@stumbleupon.com','Bigender',43000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (23,'Ainsley','Dunmore','adunmorem@yellowpages.com','Male',45000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (24,'Sharia','Edgley','sedgleyn@oracle.com','Female',29000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (25,'Akim','Danshin','adanshino@xrea.com','Male',41000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (26,'Vincenz','Davley','vdavleyp@nature.com','Male',30000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (27,'Lexie','Stickney','lstickneyq@washingtonpost.com','Non-binary',49000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (28,'Alene','McGaugey','amcgaugeyr@abc.net.au','Non-binary',36000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (29,'Hanan','Grinnikov','hgrinnikovs@ebay.com','Genderfluid',37000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (30,'Carlos','Bollen','cbollent@house.gov','Female',40000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (31,'Alley','Sevin','asevinu@techcrunch.com','Non-binary',42000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (32,'Juliane','Klouz','jklouzv@latimes.com','Male',43000,7)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (33,'Licha','MacFadzan','lmacfadzanw@nytimes.com','Bigender',32000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (34,'Lenci','Biss','lbissx@shutterfly.com','Male',26000,6)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (35,'Winfield','Walsh','wwalshy@meetup.com','Polygender',47000,1)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (36,'Lurette','Treacher','ltreacherz@java.com','Bigender',50000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (37,'Meggi','Casson','mcasson10@4shared.com','Female',21000,7)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (38,'Geoffrey','Frontczak','gfrontczak11@nasa.gov','Agender',28000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (39,'Timothy','Coggings','tcoggings12@techcrunch.com','Male',39000,7)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (40,'Darbee','Brogane','dobrogane13@tinypic.com','Genderfluid',36000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (41,'Henka','Bondy','hbondy14@wordpress.org','Agender',43000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (42,'Kenton','Reyburn','kreyburn15@linkedin.com','Agender',32000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (43,'Tawsha','Von Welldun','tvonwelldun16@hp.com','Polygender',33000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (44,'Tabb','Halvorsen','thalvorsen17@jimdo.com','Agender',22000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (45,'Elaina','Lambertazzi','elambertazzi18@gmpg.org','Genderqueer',42000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (46,'Amanda','Daysh','adaysh19@bloomberg.com','Genderfluid',34000,7)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (47,'Kizzee','Gerrans','kgerrans1a@macromedia.com','Bigender',45000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (48,'Man','Tschierasche','mtschierasche1b@si.edu','Male',22000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (49,'Burnard','Gagin','bgagin1c@artisteer.com','Bigender',39000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (50,'Ignazio','Debold','idebold1d@cdbaby.com','Female',32000,8)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (51,'Bettine','Beincken','bbeincken1e@dailymotion.com','Female',48000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (52,'Lyndell','Furneaux','lfurneaux1f@mapy.cz','Male',44000,7)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (53,'Stanly','Carlet','scarlet1g@webmd.com','Genderqueer',42000,null)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (54,'Henrietta','Caig','hcaig1h@bbc.co.uk','Agender',23000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (55,'Annette','Megarry','amegarry1i@edublogs.org','Polygender',47000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (56,'Guinevere','Van Son','gvanson1j@usda.gov','Female',32000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (57,'Brander','Midlane','bmidlane1k@ask.com','Genderqueer',41000,null)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (58,'Godwin','Theseira','gtheseira1l@si.edu','Bigender',29000,8)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (59,'Germaine','Tym','gtym1m@fotki.com','Bigender',35000,null)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (60,'Malia','Harbron','mharbron1n@ebay.com','Genderfluid',48000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (61,'Kelcy','Barchrameev','kbarchrameev1o@51.la','Male',26000,1)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (62,'Ellery','Say','esay1p@youtu.be','Genderfluid',37000,7)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (63,'Nichol','Ortelt','nortelt1q@diigo.com','Non-binary',21000,6)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (64,'Lyndell','MacQuaker','lmacquaker1r@theglobeandmail.com','Genderqueer',22000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (65,'Shir','Bickle','sbickle1s@howstuffworks.com','Genderqueer',49000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (66,'Emelita','Lawman','elawman1t@bbb.org','Genderfluid',33000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (67,'Candi','Gravener','cgravener1u@sakura.ne.jp','Genderqueer',50000,8)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (68,'Sandye','Darracott','sdarracott1v@paginegialle.it','Polygender',36000,1)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (69,'Harwell','Snowding','hsnowding1w@wikipedia.org','Non-binary',39000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (70,'Mariya','Duplock','mduplock1x@newyorker.com','Non-binary',32000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (71,'Timothea','Lincke','tlincke1y@seesaa.net','Male',45000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (72,'Leslie','Suarez','lsuarez1z@ucoz.com','Non-binary',43000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (73,'Ody','Gisburn','ogisburn20@mac.com','Male',23000,5)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (74,'Zoe','Frank','zfrank21@epa.gov','Genderqueer',21000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (75,'Noland','Chartre','nchartre22@wunderground.com','Polygender',42000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (76,'Martainn','Boom','mboom23@smh.com.au','Bigender',38000,8)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (77,'Millicent','Draisey','mdraisey24@arstechnica.com','Genderfluid',33000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (78,'Domenic','Canter','dcanter25@netlog.com','Agender',23000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (79,'Clive','Castiello','ccastiello26@slashdot.org','Non-binary',27000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (80,'Franklin','Trippack','ftrippack27@alibaba.com','Bigender',32000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (81,'Zacharias','Wintour','zwintour28@mozilla.com','Agender',21000,8)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (82,'Bennie','Coston','bcoston29@engadget.com','Agender',46000,7)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (83,'Michelle','Minard','mminard2a@twitpic.com','Non-binary',31000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (84,'Troy','Rodrigo','trodrigo2b@storify.com','Non-binary',33000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (85,'Amitie','Watkin','awatkin2c@networkadvertising.org','Genderqueer',45000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (86,'Enos','Gillebride','egillebride2d@about.me','Non-binary',37000,1)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (87,'Anabelle','Stotherfield','astotherfield2e@seesaa.net','Bigender',27000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (88,'Pearl','Pardi','ppardi2f@pagesperso-orange.fr','Agender',41000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (89,'Carilyn','Bawdon','cbawdon2g@ycombinator.com','Agender',47000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (90,'Alvira','Gaylard','agaylard2h@cocolog-nifty.com','Male',41000,10)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (91,'Emilia','Kegley','ekegley2i@rakuten.co.jp','Polygender',40000,9)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (92,'Amery','Shimony','ashimony2j@smugmug.com','Female',44000,2)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (93,'Bessy','Hughlock','bhughlock2k@amazon.co.jp','Non-binary',38000,8)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (94,'Yvon','Offell','yoffell2l@com.com','Genderfluid',41000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (95,'Emanuele','Byforth','ebyforth2m@seesaa.net','Non-binary',42000,1)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (96,'Freemon','Eidler','feidler2n@amazon.de','Female',37000,6)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (97,'Analise','Jellings','ajellings2o@cmu.edu','Genderqueer',23000,3)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (98,'Camey','Ferrai','cferrai2p@ehow.com','Bigender',43000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (99,'Justina','Brazel','jbrazel2q@amazon.co.uk','Bigender',47000,4)	;
insert into emp (emp_id, first_name, last_name, email, gender, salary, dept_id) values (100,'Odelle','Hiddsley','ohiddsley2r@bravesites.com','Male',27000,1)	;


create table dept (
	dept_id INT,
	dept_name VARCHAR(50),
	dept_loc VARCHAR(50)
);
insert into dept (dept_id, dept_name, dept_loc) values (1, 'Business Development', 'Pho Duc');
insert into dept (dept_id, dept_name, dept_loc) values (2, 'Research and Development', 'Wintzenheim');
insert into dept (dept_id, dept_name, dept_loc) values (3, 'Human Resources', 'Zhenping Chengguanzhen');
insert into dept (dept_id, dept_name, dept_loc) values (4, 'Product Management', 'Namibe');
insert into dept (dept_id, dept_name, dept_loc) values (5, 'Legal', 'Muleng');
insert into dept (dept_id, dept_name, dept_loc) values (6, 'Training', 'Dalamdesa Kalapadua');
insert into dept (dept_id, dept_name, dept_loc) values (7, 'Human Resources', 'Little Rock');
insert into dept (dept_id, dept_name, dept_loc) values (8, 'Services', 'Liên Chiểu');
insert into dept (dept_id, dept_name, dept_loc) values (9, 'Sales', 'Quinarayan');
insert into dept (dept_id, dept_name, dept_loc) values (10, 'Accounting', 'Porto Alegre');
insert into dept (dept_id, dept_name, dept_loc) values (11, 'Media Services', 'Los Angeles');

commit; -- Needed only for oracle

--------------------------------

--SQL
SELECT * FROM DEPT;
SELECT * FROM EMP;

--Simple query to find top 3 on single table
SELECT TOP 3 first_name, salary 
FROM Emp 
ORDER BY salary DESC


--Simple query but top nth salary
SELECT TOP 1 *
FROM (
SELECT TOP 3 first_name, salary 
FROM Emp 
ORDER BY salary DESC
) RESULT
ORDER BY salary 


--Query using row number partition 
SELECT first_name, salary, 
ROW_NUMBER() OVER (PARTITION BY salary ORDER BY SALARY DESC) ROWNUM
FROM Emp 

--Query with join to dept to derive salaries by department
SELECT DEPT_NAME, FIRST_NAME , SALARY, 
ROW_NUMBER() OVER (PARTITION BY E.DEPT_ID ORDER BY SALARY DESC) ROWNUM
FROM Emp E
JOIN DEPT D ON E.dept_id=D.dept_id

--Top 3 salaries for each department - using row number
SELECT *
FROM (
SELECT DEPT_NAME, FIRST_NAME , SALARY, 
ROW_NUMBER() OVER (PARTITION BY E.DEPT_ID ORDER BY SALARY DESC) ROWNUM
FROM Emp E
JOIN DEPT D ON E.dept_id=D.dept_id ) RESULT
WHERE ROWNUM <=3

--Top 3 salaries for each department - using rank window function
SELECT *
FROM (
SELECT DEPT_NAME, FIRST_NAME , SALARY, 
RANK() OVER (PARTITION BY E.DEPT_ID ORDER BY SALARY DESC) ROWNUM
FROM Emp E
JOIN DEPT D ON E.dept_id=D.dept_id ) RESULT
WHERE ROWNUM <=3


--Nth salary for each department - using row number
SELECT *
FROM (
SELECT DEPT_NAME, FIRST_NAME , SALARY, 
ROW_NUMBER() OVER (PARTITION BY E.DEPT_ID ORDER BY SALARY DESC) ROWNUM
FROM Emp E
JOIN DEPT D ON E.dept_id=D.dept_id ) RESULT
WHERE ROWNUM <=3

--Nth salary for each department - using row number
DECLARE @N INT=5;
SELECT *
FROM (
SELECT DEPT_NAME, FIRST_NAME , SALARY, 
RANK() OVER (PARTITION BY E.DEPT_ID ORDER BY SALARY DESC) ROWNUM
FROM Emp E
JOIN DEPT D ON E.dept_id=D.dept_id ) RESULT
WHERE ROWNUM =@N;



--MYSQL
--LIMIT INSTEAD OF TOP
SELECT first_name, salary 
FROM Emp 
ORDER BY salary DESC
LIMIT 3

--TOP 3 SALARY IN MYSQL
SELECT *
FROM (
SELECT DEPT_NAME, FIRST_NAME , SALARY, 
ROW_NUMBER() OVER (PARTITION BY E.DEPT_ID ORDER BY SALARY DESC) ROWNUM
FROM Emp E
JOIN DEPT D ON E.dept_id=D.dept_id ) RESULT
WHERE ROWNUM <=3

--TOP NTH SALARY IN MYSQL
SELECT *
FROM (
SELECT DEPT_NAME, FIRST_NAME , SALARY, 
RANK() OVER (PARTITION BY E.DEPT_ID ORDER BY SALARY DESC) ROWNUM
FROM Emp E
JOIN DEPT D ON E.dept_id=D.dept_id ) RESULT
WHERE ROWNUM =3;