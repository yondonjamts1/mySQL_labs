CREATE TABLE prof (
    majorNo VARCHAR(5),
    majorName CHAR(25)
    );
    
INSERT INTO prof(majorNo,majorName)
VALUES ("EC001","Electronics Technology"),
       ("EC002","Communication Technology"),
       ("EC003","Computer engineering"),
       ("EC004","Computer networking"),
       ("EC005","Renewable electronics");
       
CREATE TABLE stud (
    studNo VARCHAR(10),
    studMaj VARCHAR(5),
    lName CHAR(20),
    fName CHAR(20),
    sex CHAR(1),
    dob DATE,
    doe DATE);
    
INSERT INTO stud (studNo, studMaj, lName, fName, sex, dob, doe)
VALUES ("14B1SEAS01","EC002","Amraa","Ankhaa","M","1997-01-01","2014-09-01"),
       ("14B1SEAS02","EC001","Bataa","Boldoo","M","1996-02-02","2014-09-01"),
       ("14B1SEAS03","EC005","Chimed","Chimgee","F","1995-03-03","2014-09-01"),
       ("14B1SEAS04","EC003","Dondog","Dorj","M","1996-12-12","2014-09-01"),
       ("14B1SEAS05","EC003","Enkh","Erdene","M","1997-11-11","2014-09-01"),
       ("14B1SEAS06","EC004","Ganaa","Gombo","M","1998-10-10","2014-09-01"),
       ("14B1SEAS07","EC001","Injinash","Ishgen","F","1997-09-09","2014-09-01"),
       ("14B1SEAS08","EC005","Jamts","Jambal","M","1996-08-08","2014-09-01"),
       ("14B1SEAS09","EC003","Khangai","Kherlen","F","1997-11-12","2014-09-01"),
       ("14B1SEAS10","EC002","Lodoi","Luvsan","M","1995-12-25","2014-09-01"),
       ("14B1SEAS11","EC004","Mandakh","Molor","M","1997-05-17","2014-09-01"),
       ("14B1SEAS12","EC004","Narmandakh","Nomch","M","1997-09-02","2014-09-01"),
       ("14B1SEAS13","EC003","Orkhon","Onon","F","1997-06-08","2014-09-01"),
       ("14B1SEAS14","EC001","Purev","Peljee","M","1998-02-15","2014-09-01"),
       ("14B1SEAS15","EC005","Ravdan","Rentsenkhand","F","1999-11-14","2014-09-01");

    
CREATE TABLE lesson(
    lessonNo VARCHAR(7),
    lessonName CHAR(25),
    lessonDesc CHAR(250));
    
INSERT INTO lesson (lessonNo,lessonName,lessonDesc)
VALUES ("ECEN201","Principles of Electronics","This course introduces students to the basic components of electronics"),
       ("ECEN202","Signals and Systems","The course presents and integrates the basic concepts for both continuous-time and discrete-time signals and systems. Signal and system representations are developed for both time and frequency domains."),
       ("ECEN303","Digital Communications","This course is a graduate level introduction to the basic principles of digital communication systems"),
       ("ECEN403","Power Electronics","An introduction to switched-mode dc-dc converters"),
       ("ECEN404","Digital Signal Processing","Signal processing is one of the fundamental theories and techniques to construct modern information systems");

CREATE TABLE lessRel(
    majorNo VARCHAR(5),
    lessonNo VARCHAR(7));
    
INSERT INTO lessRel(majorNo,lessonNo)
VALUES ("EC001","ECEN201"),
       ("EC001","ECEN403"),
       ("EC002","ECEN202"),
       ("EC002","ECEN303"),
       ("EC002","ECEN404"),
       ("EC003","ECEN201"),
       ("EC003","ECEN404"),
       ("EC004","ECEN201"),
       ("EC004","ECEN303"),
       ("EC005","ECEN201"),
       ("EC005","ECEN403");

CREATE TABLE chLesson(
    studNo VARCHAR(10),
    lessonNo VARCHAR(7),
    chYear INT,
    chSeason INT,
    o1 INT,
    o2 INT,
    o3 INT);
    
INSERT INTO chLesson(studNo,lessonNo,chYear,chSeason,o1,o2,o3)
VALUES ("14B1SEAS01","ECEN202",2015,2,30,30,40),
       ("14B1SEAS02","ECEN201",2015,1,25,30,35),
       ("14B1SEAS03","ECEN201",2015,1,15,19,30),
       ("14B1SEAS04","ECEN201",2015,1,25,25,28),
       ("14B1SEAS05","ECEN404",2016,2,20,25,37),
       ("14B1SEAS06","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,),
       ("14B1SEAS","ECEN",,,,,);
