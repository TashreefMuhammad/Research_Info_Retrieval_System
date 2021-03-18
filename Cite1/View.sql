CREATE OR REPLACE VIEW DataPaper AS
SELECT * FROM Papers 
UNION 
SELECT * FROM Papers@cite2;

CREATE OR REPLACE VIEW DataAuthor AS
SELECT * FROM Author 
UNION 
SELECT * FROM Author@cite2;

CREATE OR REPLACE VIEW Part1 AS
SELECT * FROM Aggregation; 

CREATE OR REPLACE VIEW Part2 AS 
SELECT * FROM Aggregation@cite2;

CREATE OR REPLACE VIEW DataAggregation AS
SELECT Part1.AggregateID, Part1.PaperID, Part2.AuthorID
FROM Part1 JOIN Part2
ON  Part1.AggregateID = Part2.AggregateID;

commit;