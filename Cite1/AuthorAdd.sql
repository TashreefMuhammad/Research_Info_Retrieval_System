SET SERVEROUTPUT ON;
SET VERIFY OFF;

clear screen;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Provide Appropriate Entries');
    DBMS_OUTPUT.PUT_LINE('No entries should be kept empty');
END;
/

ACCEPT P CHAR PROMPT 'Name = '
ACCEPT Q CHAR PROMPT 'Department = '
ACCEPT S CHAR PROMPT 'Designation = '
ACCEPT T CHAR PROMPT 'Email Address = '

DECLARE
    aIDNo Author.AuthorID%TYPE;
    aName Author.AuthorName%TYPE;
    aDept Author.Department%TYPE;
    aDesg Author.Designation%TYPE;
    aMail Author.EmailAddress%TYPE;
    aNum Number;
BEGIN
    aName := '&P';
    aDept := '&Q';
    aDesg := '&S';
    aMail := '&T';

    SELECT COUNT(*) INTO aNum FROM DataAuthor;
    aIDNo := 'A' || TO_CHAR(aNum + 1);

    IF aDept = 'CSE' THEN
        INSERT INTO Author@Cite2 VALUES(aIDNo, aName, aDept, aDesg, aMail);
    ELSE
        INSERT INTO Author VALUES(aIDNo, aName, aDept, aDesg, aMail);
    END IF;

    commit;
END;
/