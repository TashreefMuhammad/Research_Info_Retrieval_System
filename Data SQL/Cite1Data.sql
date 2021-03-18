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
    PaperID varchar(100),
         PRIMARY KEY (AggregateID)
);

/**
--    INSERING DATA
**/

-- Author
INSERT INTO Author VALUES('A0037','dr. md. meganur rahman','EEE','Professor','mizan.eee@aust.edu');
INSERT INTO Author VALUES('A0038','dr. bobby barua','EEE','Professor','bobby@aust.edu');
INSERT INTO Author VALUES('A0039','jamal uddin ahmed','EEE','Associate Professor','jua.eee@aust.edu');
INSERT INTO Author VALUES('A0040','dr. omar farrok','EEE','Professor','omar.eee@aust.edu');
INSERT INTO Author VALUES('A0041','dr. tareq aziz','EEE','Professor','taziz.eee@aust.edu');
INSERT INTO Author VALUES('A0042','s. m. ishraqul huq','EEE','Lecturer','ishraqulhuq.eee@aust.edu');
INSERT INTO Author VALUES('A0043','ferdous irtiaz khan','EEE','Lecturer','irtiaz_khan.eee@aust.edu');
INSERT INTO Author VALUES('A0044','mushfiqul ahmed','EEE','Lecturer','mushfiq.ahmed.025.eee@aust.edu');
INSERT INTO Author VALUES('A0045','shaila arif','EEE','Assistant Professor','shaila.arif.eee@aust.edu');
INSERT INTO Author VALUES('A0046','ata-e-rabbi','EEE','Assistant Professor','ata_e_rabbi.eee@aust.edu');
INSERT INTO Author VALUES('A0047','taskin jamal','EEE','Assistant Professor','t.jamal.eee@aust.edu');

-- Papers
INSERT INTO Papers VALUES('P0001','hybridized deep learning method for bengali image captioning','10.14569/IJACSA.2021.0120287','Journal','SAI','CSE');
INSERT INTO Papers VALUES('P0002','exploring video captioning techniques: a comprehensive survey on deep learning methods','10.1007/s42979-021-00487-x','Journal','SN Computer Science','CSE');
INSERT INTO Papers VALUES('P0003','adrisya sahayak: a bangla virtual assistant for visually impaired','10.1109/ICREST51555.2021.9331080','Conferene','IEEE','CSE');
INSERT INTO Papers VALUES('P0004','a survey of methods for managing the classification and solution of data imbalance problem','10.3844/jcssp.2020.1546.1557','Journal','Science Publications','CSE');
INSERT INTO Papers VALUES('P0005','a hybridized feature extraction approach to suicidal ideation detection from social media post','10.1109/TENSYMP50017.2020.9230733','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0006','early depression detection from social network using deep learning techniques','10.1109/TENSYMP50017.2020.9231008','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0007','an attention-based approach to detect emotion from tweets','10.1109/IC2IE50715.2020.9274600','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0008','esharagan: an approach to generate disentangle representation of sign language using infogan','10.1109/TENSYMP50017.2020.9230946','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0009','efficient feature selection for detecting botnets based on network traffic and behavior analysis','10.1145/3428363.3428378','Conference','ACM','CSE');
INSERT INTO Papers VALUES('P0010','a neural network based approach for recognition of basic emotions from speech','10.1109/TENSYMP50017.2020.9230641','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0011','credit card fraud detection using data pre-processing on imbalanced data - both oversampling and undersampling','10.1145/3377049.3377113','Conference','ACM','CSE');
INSERT INTO Papers VALUES('P0012','hybrid text summarizer for bangla document','','Journal','IJCVSP','CSE');
INSERT INTO Papers VALUES('P0013','predicting behavior trends among students based on personality traits','10.1145/3377049.3377068','Conference','ACM','CSE');
INSERT INTO Papers VALUES('P0014','prediction of lung cancer patients survival time using regression analysis and image processing techniques','10.5120/ijca2020920409','Journal','IJCA','CSE');
INSERT INTO Papers VALUES('P0015','an empirical study on stack overflow security vulnerability in well-known open source software systems','10.5120/ijca2020920492','Journal','IJCA','CSE');
INSERT INTO Papers VALUES('P0016','spam review detection using deep learning','10.1109/IEMCON.2019.8936148','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0017','brain tumor detection using convolutional neural network','10.1109/ICASERT.2019.8934561','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0018','using boosting approaches to detect spam reviews','10.1109/ICASERT.2019.8934467','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0019','artificial prognosis of cardiac disease using an nn: a data-scientific approach in outlier handling','10.1109/EICT48899.2019.9068847','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0020','emotion detection from tweets using ait-2018 dataset','10.1109/ICAEE48663.2019.8975433','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0021','a novel approach to classify bangla sign digits using capsule network','10.1109/ICCIT48885.2019.9038609','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0022','bengali handwritten alphabet recognition using deep convolutional neural network','10.1109/IC4ME247184.2019.9036572','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0023','high-throughput bitpacking compression','10.1109/DSD.2019.00101','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0024','an effective artificial neural network based power load prediction algorithm','10.5120/ijca2019919050','Journal','IJCA','CSE');
INSERT INTO Papers VALUES('P0025','modified bat algorithm with hybridization of gaussian probability and doppler effect','10.1109/STI47673.2019.9068014','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0026','adaptive flower pollination algorithm: a novel approach for function optimization problem','10.5120/cae2019652848','Journal','CAE','CSE');
INSERT INTO Papers VALUES('P0027','tuning exploitation and exploration for flower pollination algorithm: a case study on function optimization problem','10.5120/ijais2019451824','Journal','IJAIS','CSE');
INSERT INTO Papers VALUES('P0028','abys(always by your side): a virtual assistant for visually impaired persons','10.1109/ICCIT48885.2019.9038603','Conference','IEEE','CSE');
INSERT INTO Papers VALUES('P0029','writer-independent offline handwritten signature verification using novel feature extraction techniques','10.5120/ijca2019919537','Journal','IJCA','CSE');
INSERT INTO Papers VALUES('P0030','neural sentence fusion for diversity driven abstractive multi-document summarization','10.1016/j.csl.2019.04.006','Journal','Elsevier','CSE');
INSERT INTO Papers VALUES('P0031','neural diverse abstractive sentence compression generation','10.1007/978-3-030-15719-7_14','Conference','Springer','CSE');
INSERT INTO Papers VALUES('P0032','boro rice model for haor region of bangladesh based on modis ndvi images','10.1109/IGARSS.2019.8899013','Conference','IEEE','CSE');

-- Aggregation
INSERT INTO Aggregation VALUES('C0001','P0001');
INSERT INTO Aggregation VALUES('C0002','P0002');
INSERT INTO Aggregation VALUES('C0003','P0002');
INSERT INTO Aggregation VALUES('C0004','P0003');
INSERT INTO Aggregation VALUES('C0005','P0004');
INSERT INTO Aggregation VALUES('C0006','P0005');
INSERT INTO Aggregation VALUES('C0007','P0006');
INSERT INTO Aggregation VALUES('C0008','P0006');
INSERT INTO Aggregation VALUES('C0009','P0007');
INSERT INTO Aggregation VALUES('C0010','P0008');
INSERT INTO Aggregation VALUES('C0011','P0008');
INSERT INTO Aggregation VALUES('C0012','P0009');
INSERT INTO Aggregation VALUES('C0013','P0010');
INSERT INTO Aggregation VALUES('C0014','P0011');
INSERT INTO Aggregation VALUES('C0015','P0012');
INSERT INTO Aggregation VALUES('C0016','P0013');
INSERT INTO Aggregation VALUES('C0017','P0013');
INSERT INTO Aggregation VALUES('C0018','P0014');
INSERT INTO Aggregation VALUES('C0019','P0015');
INSERT INTO Aggregation VALUES('C0020','P0016');
INSERT INTO Aggregation VALUES('C0021','P0016');
INSERT INTO Aggregation VALUES('C0022','P0017');
INSERT INTO Aggregation VALUES('C0023','P0017');
INSERT INTO Aggregation VALUES('C0024','P0018');
INSERT INTO Aggregation VALUES('C0025','P0019');
INSERT INTO Aggregation VALUES('C0026','P0019');
INSERT INTO Aggregation VALUES('C0027','P0020');
INSERT INTO Aggregation VALUES('C0028','P0021');
INSERT INTO Aggregation VALUES('C0029','P0021');
INSERT INTO Aggregation VALUES('C0030','P0022');
INSERT INTO Aggregation VALUES('C0031','P0023');
INSERT INTO Aggregation VALUES('C0032','P0024');
INSERT INTO Aggregation VALUES('C0033','P0024');
INSERT INTO Aggregation VALUES('C0034','P0025');
INSERT INTO Aggregation VALUES('C0035','P0026');
INSERT INTO Aggregation VALUES('C0036','P0026');
INSERT INTO Aggregation VALUES('C0037','P0027');
INSERT INTO Aggregation VALUES('C0038','P0027');
INSERT INTO Aggregation VALUES('C0039','P0028');
INSERT INTO Aggregation VALUES('C0040','P0029');
INSERT INTO Aggregation VALUES('C0041','P0029');
INSERT INTO Aggregation VALUES('C0042','P0030');
INSERT INTO Aggregation VALUES('C0043','P0031');
INSERT INTO Aggregation VALUES('C0044','P0032');
INSERT INTO Aggregation VALUES('C0045','P0032');
INSERT INTO Aggregation VALUES('C0046','P0033');
INSERT INTO Aggregation VALUES('C0047','P0034');
INSERT INTO Aggregation VALUES('C0048','P0035');
INSERT INTO Aggregation VALUES('C0049','P0036');
INSERT INTO Aggregation VALUES('C0050','P0037');
INSERT INTO Aggregation VALUES('C0051','P0038');
INSERT INTO Aggregation VALUES('C0052','P0039');
INSERT INTO Aggregation VALUES('C0053','P0039');
INSERT INTO Aggregation VALUES('C0054','P0039');
INSERT INTO Aggregation VALUES('C0055','P0039');
INSERT INTO Aggregation VALUES('C0056','P0040');
INSERT INTO Aggregation VALUES('C0057','P0040');
INSERT INTO Aggregation VALUES('C0058','P0040');
INSERT INTO Aggregation VALUES('C0059','P0040');


-- Saving all in database
commit;