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
        DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
        -- Outer Loop to find infomation about the Paper
        FOR R in (SELECT * FROM DataPaper WHERE PaperID IN (SELECT PaperID FROM DataAggregation 
                WHERE AuthorID IN (SELECt AuthorID FROM DataAuthor WHERE AuthorName LIKE '%' || aName || '%' AND 
                Department LIKE '%' || aDept || '%' AND Designation LIKE '%' || aDesg || '%' AND EmailAddress LIKE '%' || aMail || '%'))) LOOP
                    -- Inner Loop to find information about the relevant Author
                    FOR S in (SELECT * FROM DataAuthor WHERE AuthorID IN (SELECT AuthorID FROM DataAggregation
                            WHERE PaperID IN R.PaperID AND AuthorID IN (SELECt AuthorID FROM DataAuthor WHERE AuthorName LIKE '%' || aName || '%' AND 
                            Department LIKE '%' || aDept || '%' AND Designation LIKE '%' || aDesg || '%' AND EmailAddress LIKE '%' || aMail || '%'))) LOOP
                        DBMS_OUTPUT.PUT_LINE('=================');
                        DBMS_OUTPUT.PUT_LINE('Author Information');
                        DBMS_OUTPUT.PUT_LINE('Author Name: ' || S.AuthorName);
                        DBMS_OUTPUT.PUT_LINE('Author Department: ' || S.Department);
                        DBMS_OUTPUT.PUT_LINE('Author Designation: ' || S.Designation);
                        DBMS_OUTPUT.PUT_LINE('Author Email Address: ' || S.EmailAddress);
                        DBMS_OUTPUT.PUT_LINE('=================');
                        DBMS_OUTPUT.PUT_LINE('Paper Information');
                        DBMS_OUTPUT.PUT_LINE('Paper Name: ' || R.PaperName);
                        DBMS_OUTPUT.PUT_LINE('Paper DOI: ' || R.DOI);
                        DBMS_OUTPUT.PUT_LINE('Paper Type: ' || R.PType);
                        DBMS_OUTPUT.PUT_LINE('Paper Publisher: ' || R.Publisher);
                        -- New line in PL/SQL: https://stackoverflow.com/questions/11329953/how-do-i-print-output-in-new-line-in-pl-sql/11330100
                        DBMS_OUTPUT.PUT_LINE(CHR(13)||CHR(10));
                    END LOOP;
        END LOOP;
    END;

END SuppPublicationCnt;
/