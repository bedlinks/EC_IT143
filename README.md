# 6.3 – User Defined Functions and Triggers

### BYU Pathway | EC_IT143 | Ernest Baah Dwomoh

This project explores scalar functions and after-update triggers in SQL Server using a practical, step-by-step approach. The project is split into two parts:

---

## 📂 Fun with Functions

Focus: Extract first and last names from the `ContactName` column in the `t_w3_schools_customers` table.

Scripts:
- `s1` to `s8`: from question to testing and function creation.

Functions Created:
- `dbo.fn_GetFirstName`
- `dbo.fn_GetLastName`

---

## 📂 Fun with Triggers

Focus: Automatically update audit fields (`LastModifiedBy`, `LastModifiedDate`) after a record is updated.

Scripts:
- `s1` to `s6`: from initial question to a working trigger with test case.

Trigger Created:
- `trg_UpdateCustomerAudit`

---

## 📚 Learning Resources

- [CHARINDEX – Microsoft Docs](https://learn.microsoft.com/en-us/sql/t-sql/functions/charindex-transact-sql)
- [LEFT – Microsoft Docs](https://learn.microsoft.com/en-us/sql/t-sql/functions/left-transact-sql)
- [AFTER UPDATE Trigger – SQL Server Tutorial](https://www.sqlservertutorial.net/sql-server-triggers/sql-server-after-update-trigger/)
- [CREATE TRIGGER – Microsoft Docs](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-trigger-transact-sql)

---

## 📹 Video Walkthrough

> Coming soon – includes live demonstrations of all steps above.

---

## 📣 Author

**Ernest Baah Dwomoh**  
BYU Pathway Student  
April 2025
