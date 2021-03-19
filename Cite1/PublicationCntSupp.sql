-------PACKAGE DECLARATION-------
CREATE OR REPLACE PACKAGE SuppPublicationCnt AS
    FUNCTION cntRows(aName IN Author.AuthorName%TYPE, aDept IN Author.Department%TYPE, 
                    aDesg IN Author.Designation%TYPE, aMail IN Author.EmailAddress%TYPE)
    RETURN NUMBER;

    PROCEDURE printValues(aName IN Author.AuthorName%TYPE, aDept IN Author.Department%TYPE, 
                    aDesg IN Author.Designation%TYPE, aMail IN Author.EmailAddress%TYPE);
END SuppPublicationCnt;
/

-------PACKAGE BODY DECLARATION-------
CREATE OR REPLACE PACKAGE BODY SuppPublicationCnt AS
    FUNCTION cntRows(aName IN Author.AuthorName%TYPE, aDept IN Author.Department%TYPE, 
                    aDesg IN Author.Designation%TYPE, aMail IN Author.EmailAddress%TYPE)
    RETURN NUMBER
    IS
    aNum NUMBER;
    BEGIN
        SELECT COUNT(*) INTO aNum FROM DataPaper WHERE PaperID IN (SELECT PaperID FROM DataAggregation 
                WHERE AuthorID IN (SELECt AuthorID FROM DataAuthor WHERE AuthorName LIKE '%' || aName || '%' AND 
                Department LIKE '%' || aDept || '%' AND Designation LIKE '%' || aDesg || '%' AND EmailAddress LIKE '%' || aMail || '%'));
        return aNum;
    END;

    PROCEDURE printValues(aName IN Author.AuthorName%TYPE, aDept IN Author.Department%TYPE, 
                    aDesg IN Author.Designation%TYPE, aMail IN Author.EmailAddress%TYPE)
    IS
    BEGIN
        FOR R in (SELECT * FROM DataPaper WHERE PaperID IN (SELECT PaperID FROM DataAggregation 
                WHERE AuthorID IN (SELECt AuthorID FROM DataAuthor WHERE AuthorName LIKE '%' || aName || '%' AND 
                Department LIKE '%' || aDept || '%' AND Designation LIKE '%' || aDesg || '%' AND EmailAddress LIKE '%' || aMail || '%'))) LOOP
            DBMS_OUTPUT.PUT_LINE(R.PaperName);
            DBMS_OUTPUT.PUT_LINE(R.DOI);
            DBMS_OUTPUT.PUT_LINE(R.PType);
            DBMS_OUTPUT.PUT_LINE(R.Publisher);
            DBMS_OUTPUT.PUT_LINE(R.Department);
            -- New line in PL/SQL: https://stackoverflow.com/questions/11329953/how-do-i-print-output-in-new-line-in-pl-sql/11330100
            DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
        END LOOP;
    END;

END SuppPublicationCnt;
/