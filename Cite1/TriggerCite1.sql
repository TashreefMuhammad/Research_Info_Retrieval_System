-------TRIGGER-------

----------------------------------
----------------------------------
----------------------------------

----------------------------------
CREATE OR REPLACE TRIGGER AuthorInsertCite1
AFTER INSERT ON Author
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AuthorUpdateCite1
AFTER UPDATE ON Author
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AuthorDeleteCite1
AFTER DELETE ON Author
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite1 Storage');
END;
/

----------------------------------
----------------------------------
----------------------------------

CREATE OR REPLACE TRIGGER PapersInsertCite1
AFTER INSERT ON Papers
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER PapersUpdateCite1
AFTER UPDATE ON Papers
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER PapersDeleteCite1
AFTER DELETE ON Papers
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite1 Storage');
END;
/

----------------------------------
----------------------------------
----------------------------------

CREATE OR REPLACE TRIGGER AggregationInsertCite1
AFTER INSERT ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Inserted in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AggregationUpdateCite1
AFTER UPDATE ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Updated in Cite1 Storage');
END;
/
----------------------------------
CREATE OR REPLACE TRIGGER AggregationDeleteCite1
AFTER DELETE ON Aggregation
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Data Deletd in Cite1 Storage');
END;
/

commit;