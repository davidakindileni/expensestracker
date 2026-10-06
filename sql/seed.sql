-- =============================================
-- Expense Tracker
-- Test / Reference Data
-- =============================================


-- CATEGORIES

INSERT INTO Categories (CatDesc)
VALUES ('Transportation');

INSERT INTO Categories (CatDesc)
VALUES ('Office Supplies');

INSERT INTO Categories (CatDesc)
VALUES ('Utilities');

INSERT INTO Categories (CatDesc)
VALUES ('Maintenance');

INSERT INTO Categories (CatDesc)
VALUES ('Communication');


-- COST CENTRES

INSERT INTO CostCentres
    (CCCode, CCDesc, CCType, ParentCCID)
VALUES
    ('100-000-0000', 'Head Office', 'Branch', NULL);

INSERT INTO CostCentres
    (CCCode, CCDesc, CCType, ParentCCID)
VALUES
    ('100-100-0000', 'Administration', 'Department', 1);

INSERT INTO CostCentres
    (CCCode, CCDesc, CCType, ParentCCID)
VALUES
    ('100-200-0000', 'Information Technology', 'Department', 1);

INSERT INTO CostCentres
    (CCCode, CCDesc, CCType, ParentCCID)
VALUES
    ('100-100-0001', 'Office Services', 'Section', 2);

INSERT INTO CostCentres
    (CCCode, CCDesc, CCType, ParentCCID)
VALUES
    ('100-200-0001', 'Technical Support', 'Section', 3);


-- EXPENSES

INSERT INTO Expenses
    (ExpDate, ExpDesc, ExpAmount, CatID, CCID)
VALUES
    ('2026-10-01', 'Printer paper and stationery', 12500.00, 2, 4);

INSERT INTO Expenses
    (ExpDate, ExpDesc, ExpAmount, CatID, CCID)
VALUES
    ('2026-10-02', 'Internet subscription', 35000.00, 5, 3);

INSERT INTO Expenses
    (ExpDate, ExpDesc, ExpAmount, CatID, CCID)
VALUES
    ('2026-10-03', 'Vehicle fuel', 25000.00, 1, 2);