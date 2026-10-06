-- =====================================================
-- Expense Management Database
-- Database Schema
-- =====================================================

-- Enable foreign key support in SQLite
PRAGMA foreign_keys = ON;

-- =====================================================
-- Categories Table
-- Stores the different expense categories
-- =====================================================

CREATE TABLE IF NOT EXISTS Categories (
    CatID INTEGER PRIMARY KEY AUTOINCREMENT,
    CatDesc TEXT NOT NULL UNIQUE
);

-- =====================================================
-- Cost Centres Table
-- Stores the hierarchical cost centre information
--
-- CCCode format:
-- Branch:      999
-- Department:  999-999
-- Section:     999-999-9999
-- =====================================================

CREATE TABLE IF NOT EXISTS CostCentres (
    CCID INTEGER PRIMARY KEY AUTOINCREMENT,
    CCCode TEXT NOT NULL UNIQUE,
    CCDesc TEXT NOT NULL,
    CCType TEXT NOT NULL
        CHECK (CCType IN ('Branch', 'Department', 'Section')),
    ParentCCID INTEGER,

    FOREIGN KEY (ParentCCID)
        REFERENCES CostCentres(CCID)
);
-- =====================================================
-- Expenses Table
-- Stores individual expense transactions
-- =====================================================

CREATE TABLE IF NOT EXISTS Expenses (
    ExpID INTEGER PRIMARY KEY AUTOINCREMENT,
    ExpDate TEXT NOT NULL,
    ExpDesc TEXT NOT NULL,
    ExpAmount REAL NOT NULL CHECK (ExpAmount >= 0),
    CatID INTEGER NOT NULL,
    CCID INTEGER NOT NULL,

    FOREIGN KEY (CatID)
        REFERENCES Categories(CatID),

    FOREIGN KEY (CCID)
        REFERENCES CostCentres(CCID)
);