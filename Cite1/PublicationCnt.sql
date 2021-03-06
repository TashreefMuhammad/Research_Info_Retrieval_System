SET SERVEROUTPUT ON;
SET VERIFY OFF;

clear screen;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Provide Appropriate Entries');
    DBMS_OUTPUT.PUT_LINE('You can keep entries empty. Just press enter');
END;
/

ACCEPT P CHAR PROMPT 'Name = '
ACCEPT Q CHAR PROMPT 'Department = '
ACCEPT S CHAR PROMPT 'Designation = '
ACCEPT T CHAR PROMPT 'Email Address = '

DECLARE
    aName Author.AuthorName%TYPE;
    aDept Author.Department%TYPE;
    aDesg Author.Designation%TYPE;
    aMail Author.EmailAddress%TYPE;
    aNum Number;
    aException Exception;
BEGIN
    aName := '&P';
    aDept := '&Q';
    aDesg := '&S';
    aMail := '&T';

    aNum := SuppPublicationCnt.cntRows(aName, aDept, aDesg, aMail);
    IF aNum = 0 THEN
        RAISE aException;
    ELSE
        DBMS_OUTPUT.PUT_LINE('A Total of ' || aNum || ' Entries Matched with Given Values:');
        SuppPublicationCnt.printValues(aName, aDept, aDesg, aMail);
    END IF;

EXCEPTION
    WHEN aException THEN
        DBMS_OUTPUT.PUT_LINE('No Entries Matched for the Given Input.');
END;
/