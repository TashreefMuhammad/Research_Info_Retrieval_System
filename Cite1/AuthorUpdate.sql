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
BEGIN
    aName := '&P';
    aDept := '&Q';
    aDesg := '&S';
    aMail := '&T';

    DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
    FOR R IN (SELECT * FROM DataAuthor WHERE AuthorName LIKE '%' || aName || '%' AND 
            Department LIKE '%' || aDept || '%' AND Designation LIKE '%' || aDesg || '%' AND EmailAddress LIKE '%' || aMail || '%') LOOP
        DBMS_OUTPUT.PUT_LINE('=================');
        DBMS_OUTPUT.PUT_LINE('Author ID: ' || R.AuthorID);
        DBMS_OUTPUT.PUT_LINE('Author Name: ' || R.AuthorName);
        DBMS_OUTPUT.PUT_LINE('Author Department: ' || R.Department);
        DBMS_OUTPUT.PUT_LINE('Author Designation: ' || R.Designation);
        DBMS_OUTPUT.PUT_LINE('Author Email Address: ' || R.EmailAddress);
        DBMS_OUTPUT.PUT_LINE('=================');
        DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
    END LOOP;
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('Enter the new data you wish to insert');
    DBMS_OUTPUT.PUT_LINE('Keep the AuthorID unchanged');
END;
/

ACCEPT P1 CHAR PROMPT 'Name = '
ACCEPT Q1 CHAR PROMPT 'Department = '
ACCEPT S1 CHAR PROMPT 'Designation = '
ACCEPT T1 CHAR PROMPT 'Email Address = '
ACCEPT U1 CHAR PROMPT 'AuthorID = '

DECLARE
    aIDNo Author.AuthorID%TYPE;
    aName Author.AuthorName%TYPE;
    aDept Author.Department%TYPE;
    aDesg Author.Designation%TYPE;
    aMail Author.EmailAddress%TYPE;
BEGIN
    aName := '&P1';
    aDept := '&Q1';
    aDesg := '&S1';
    aMail := '&T1';
    aIDNo := '&U1';

    IF aDept = 'CSE' THEN
        UPDATE Author@Cite2 SET AuthorName = aName, Designation = aDesg, EmailAddress = aMail WHERE AuthorID = aIDNo;
    ELSE
        UPDATE Author SET AuthorName = aName, Designation = aDesg, EmailAddress = aMail WHERE AuthorID = aIDNo;
    END IF;

    commit;
END;
/