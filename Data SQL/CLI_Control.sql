/**
-- Resoource Links:
-- https://www.bnl.gov/phobos/Detectors/Computing/Orant/doc/sqlplus.804/a53717/ch4.htm
-- https://www2.uwe.ac.uk/services/its/Documents/Computer%20Science%20Support%20pdfs/Computer%20Science%209%20-%20SQLPlus%20-%20Setting%20Line%20And%20Page%20Sizes.pdf
**/

-- CLI Properties
SET linesize 300;
SET pagesize 300;

/**
-- COLUMN PROPERTIES
**/

--AUthor
COLUMN AUTHORID FORMAT A8;
COLUMN AUTHORNAME FORMAT A50;
COLUMN DEPARTMENT FORMAT A4;
COLUMN DESIGNATION FORMAT A20;
COLUMN EMAILADDRESS FORMAT A50;


-- Papers
COLUMN PAPERID FORMAT A7;
COLUMN PAPERNAME FORMAT A105;
COLUMN DOI FORMAT A35;
COLUMN PTYPE FORMAT A10;
COLUMN PUBLISHER FORMAT A30;
COLUMN DEPARTMENT FORMAT A4;

-- Aggregation
COLUMN AggregateID FORMAT A11;

commit;