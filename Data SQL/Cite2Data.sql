clear screen;

--delete existing table
DROP TABLE Author CASCADE CONSTRAINTS;
DROP TABLE Papers cascade CONSTRAINTS;
DROP TABLE Aggregation cascade CONSTRAINTS;

/**
--    CREATE TABLES
**/

--Create Author Table
CREATE TABLE Author
(
    AuthorID varchar(100),
    AuthorName varchar(100),
    Department varchar(100),
    Designation varchar(100),
    EmailAddress varchar(100),
        PRIMARY KEY (AuthorID)
);

--Create Paprs Table
CREATE TABLE Papers
(
    PaperID varchar(100),
    PaperName varchar(200),
    DOI varchar(100),
    PType varchar(100),
    Publisher varchar(100),
    Department varchar(100),
        PRIMARY KEY (PaperID)
);

--Create Aggregation Table
CREATE TABLE Aggregation
(
    AggregateID varchar(100),
    AuthorID varchar(100),
         PRIMARY KEY (AggregateID)
);

/**
--    INSERING DATA
**/

-- Author
INSERT INTO Author VALUES('A0001','dr. s.m.a. al-mamun','CSE','Professor','almamun@aust.edu');
INSERT INTO Author VALUES('A0002','prof. dr. kazi a kalpoma','CSE','Professor','kalpoma@aust.edu');
INSERT INTO Author VALUES('A0003','dr. mohammad shafiul alam','CSE','Professor','shafiul.cse@aust.edu');
INSERT INTO Author VALUES('A0004','dr. md. shahriar mahbub','CSE','Professor','shahriar.cse@aust.edu');
INSERT INTO Author VALUES('A0005','md. khairul hasan','CSE','Associate Professor','khairul271276@aust.edu');
INSERT INTO Author VALUES('A0006','mohammad moinul hoque','CSE','Associate Professor','moinul@aust.edu');
INSERT INTO Author VALUES('A0007','faisal muhammad shah','CSE','Associate Professor','faisal.cse@aust.edu');
INSERT INTO Author VALUES('A0008','dr. -ing. nusrat jahan lisa','CSE','Assistant Professor','nusratlisa.cse@aust.edu');
INSERT INTO Author VALUES('A0009','qamrun nahar eity','CSE','Assistant Professor','eity.cse@aust.edu');
INSERT INTO Author VALUES('A0010','tanvir ahmed','CSE','Assistant Professor','tanvir.cse@aust.edu');
INSERT INTO Author VALUES('A0011','emam hossain','CSE','Assistant Professor','emamhossain.cse@aust.edu');
INSERT INTO Author VALUES('A0012','syeda shabnam hasan','CSE','Assistant Professor','shabnam.cse@aust.edu');
INSERT INTO Author VALUES('A0013','nazmus sakib','CSE','Assistant Professor','nazmussakib009@gmail.com');
INSERT INTO Author VALUES('A0014','raqeebir rab','CSE','Assistant Professor','raqeebir.cse@aust.edu');
INSERT INTO Author VALUES('A0015','mohammad imrul jubair','CSE','Assistant Professor','jubair.cse@aust.edu');
INSERT INTO Author VALUES('A0016','afsana ahmed munia','CSE','Assistant Professor','afsana.cse@aust.edu');
INSERT INTO Author VALUES('A0017','mir tafseer nayeem','CSE','Assistant Professor','mtnayeem.cse@aust.edu');
INSERT INTO Author VALUES('A0018','h m zabir haque','CSE','Assistant Professor','zabir.haque.cse@aust.edu');
INSERT INTO Author VALUES('A0019','tanveer ahmed belal','CSE','Assistant Professor','belal92.cse@gmail.com');
INSERT INTO Author VALUES('A0020','shoeb mohammad shahriar','CSE','Assistant Professor','shahriar2529@gmail.com');
INSERT INTO Author VALUES('A0021','md. aminur rahman','CSE','Assistant Professor','aminur.cse@aust.edu');
INSERT INTO Author VALUES('A0022','tahsin aziz','CSE','Assistant Professor','tahsinaziz.cse@aust.edu');
INSERT INTO Author VALUES('A0023','md. masudur rahman','CSE','Lecturer','masudur.rahman0413.cse@aust.edu');
INSERT INTO Author VALUES('A0024','tasfia zahin','CSE','Lecturer','tasfia.cse@aust.edu');
INSERT INTO Author VALUES('A0025','md. tawkat islam khondaker','CSE','Lecturer','tawkat.cse@aust.edu');
INSERT INTO Author VALUES('A0026','g. m. shahariar','CSE','Lecturer','shahariar_shibli.cse@aust.edu');
INSERT INTO Author VALUES('A0027','nibir chandra mandal','CSE','Lecturer','1405088.ncm@ugrad.cse.buet.ac.bd');
INSERT INTO Author VALUES('A0028','md. hasin abrar','CSE','Lecturer','hasinabrar1405@gmail.com');
INSERT INTO Author VALUES('A0029','mohsena ashraf','CSE','Lecturer','mohsena.ria20@gmail.com');
INSERT INTO Author VALUES('A0030','al hasib mahamud','CSE','Lecturer','hasib.cse@aust.edu');
INSERT INTO Author VALUES('A0031','tonmoy hossain','CSE','Lecturer','tonmoyhossaindihan@gmail.com');
INSERT INTO Author VALUES('A0032','junaed younus khan','CSE','Lecturer','junaed.cse@aust.edu');
INSERT INTO Author VALUES('A0033','nowshin nawar arony','CSE','Lecturer','nna.cse@aust.edu');
INSERT INTO Author VALUES('A0034','a.k.m. amanat ullah','CSE','Lecturer','amanat.cse@aust.edu');
INSERT INTO Author VALUES('A0035','farzad ahmed','CSE','Lecturer','farzad.cse@aust.edu');
INSERT INTO Author VALUES('A0036','mohammad marufur rahman','CSE','Lecturer','maruf.cse@aust.edu');

-- Papers
INSERT INTO Papers VALUES('P0033','bandgap tuning of samarium and cobalt co-doped bismuth ferrite nanoparticles','10.1016/j.mseb.2020.114842','Journal','Elsevier','EEE');
INSERT INTO Papers VALUES('P0034','analytical performance evaluation of coherent detection optical receiver over direct detection in ofdm wireless optical communication system under turbulent condition','10.37591/toeoc.v10i1.3909','Journal','Trends in Opto-Electro & Optical Communications','EEE');
INSERT INTO Papers VALUES('P0035','simultaneous computation of arithmetic logic operation based on polarized optical shadow casting method','10.1109/ICAICT51780.2020.9333471','Conference','IEEE','EEE');
INSERT INTO Papers VALUES('P0036','enhanced electrical conductivity and multiferroic property of cobalt-doped bismuth ferrite nanoparticles','10.1007/s10854-020-03407-6','Journal','Springer','EEE');
INSERT INTO Papers VALUES('P0037','proton exchange membrane hydrogen fuel cell as the grid connected power generator','10.3390/en13246679','Journal','Energies','EEE');
INSERT INTO Papers VALUES('P0038','maximization of the generated electrical power of a superconducting ddlg for wave energy extraction','10.1109/ASEMD49065.2020.9276163','Conference','IEEE','EEE');
INSERT INTO Papers VALUES('P0039','developing faster restoration technique for industrial microgrid under post-isolation scenarios','10.1109/SGES51519.2020.00134','Conference','IEEE','EEE');
INSERT INTO Papers VALUES('P0040','behavioural study of a remote power system with high pv penetration during a state of emergency','10.1109/SGES51519.2020.00110','Conference','IEEE','EEE');

-- Aggregation
INSERT INTO Aggregation VALUES('C0001','A0007');
INSERT INTO Aggregation VALUES('C0002','A0007');
INSERT INTO Aggregation VALUES('C0003','A0031');
INSERT INTO Aggregation VALUES('C0004','A0006');
INSERT INTO Aggregation VALUES('C0005','A0007');
INSERT INTO Aggregation VALUES('C0006','A0007');
INSERT INTO Aggregation VALUES('C0007','A0007');
INSERT INTO Aggregation VALUES('C0008','A0035');
INSERT INTO Aggregation VALUES('C0009','A0007');
INSERT INTO Aggregation VALUES('C0010','A0007');
INSERT INTO Aggregation VALUES('C0011','A0031');
INSERT INTO Aggregation VALUES('C0012','A0014');
INSERT INTO Aggregation VALUES('C0013','A0005');
INSERT INTO Aggregation VALUES('C0014','A0003');
INSERT INTO Aggregation VALUES('C0015','A0006');
INSERT INTO Aggregation VALUES('C0016','A0018');
INSERT INTO Aggregation VALUES('C0017','A0030');
INSERT INTO Aggregation VALUES('C0018','A0030');
INSERT INTO Aggregation VALUES('C0019','A0023');
INSERT INTO Aggregation VALUES('C0020','A0007');
INSERT INTO Aggregation VALUES('C0021','A0026');
INSERT INTO Aggregation VALUES('C0022','A0007');
INSERT INTO Aggregation VALUES('C0023','A0031');
INSERT INTO Aggregation VALUES('C0024','A0007');
INSERT INTO Aggregation VALUES('C0025','A0007');
INSERT INTO Aggregation VALUES('C0026','A0031');
INSERT INTO Aggregation VALUES('C0027','A0007');
INSERT INTO Aggregation VALUES('C0028','A0007');
INSERT INTO Aggregation VALUES('C0029','A0031');
INSERT INTO Aggregation VALUES('C0030','A0007');
INSERT INTO Aggregation VALUES('C0031','A0008');
INSERT INTO Aggregation VALUES('C0032','A0020');
INSERT INTO Aggregation VALUES('C0033','A0005');
INSERT INTO Aggregation VALUES('C0034','A0022');
INSERT INTO Aggregation VALUES('C0035','A0022');
INSERT INTO Aggregation VALUES('C0036','A0003');
INSERT INTO Aggregation VALUES('C0037','A0022');
INSERT INTO Aggregation VALUES('C0038','A0003');
INSERT INTO Aggregation VALUES('C0039','A0006');
INSERT INTO Aggregation VALUES('C0040','A0001');
INSERT INTO Aggregation VALUES('C0041','A0021');
INSERT INTO Aggregation VALUES('C0042','A0017');
INSERT INTO Aggregation VALUES('C0043','A0017');
INSERT INTO Aggregation VALUES('C0044','A0002');
INSERT INTO Aggregation VALUES('C0045','A0033');
INSERT INTO Aggregation VALUES('C0046','A0037');
INSERT INTO Aggregation VALUES('C0047','A0038');
INSERT INTO Aggregation VALUES('C0048','A0039');
INSERT INTO Aggregation VALUES('C0049','A0037');
INSERT INTO Aggregation VALUES('C0050','A0040');
INSERT INTO Aggregation VALUES('C0051','A0040');
INSERT INTO Aggregation VALUES('C0052','A0041');
INSERT INTO Aggregation VALUES('C0053','A0042');
INSERT INTO Aggregation VALUES('C0054','A0043');
INSERT INTO Aggregation VALUES('C0055','A0044');
INSERT INTO Aggregation VALUES('C0056','A0045');
INSERT INTO Aggregation VALUES('C0057','A0046');
INSERT INTO Aggregation VALUES('C0058','A0041');
INSERT INTO Aggregation VALUES('C0059','A0047');


-- Saving all in database
commit;