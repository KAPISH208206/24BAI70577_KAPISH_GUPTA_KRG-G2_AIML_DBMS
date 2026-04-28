// ques1

SELECT s.sup_name, p.prod_name, o.qty
FROM Tbl_Suppliers s
JOIN Tbl_Products p
ON s.sup_id = p.sup_id
JOIN Tbl_Orders o
ON p.prod_id = o.prod_id;


// ques2


CREATE OR REPLACE FUNCTION update_stock_qty()
RETURNS TRIGGER AS $$
BEGIN

    -- Reduce stock quantity when new order is inserted
    UPDATE Tbl_Products
    SET stock_qty = stock_qty - NEW.qty
    WHERE prod_id = NEW.prod_id;

    RETURN NEW;

END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_update_stock
AFTER INSERT ON Tbl_Orders
FOR EACH ROW
EXECUTE FUNCTION update_stock_qty();


INSERT INTO Tbl_Orders
VALUES (9003, 501, 103, '2026-04-28', 2);


SELECT * FROM Tbl_Products;