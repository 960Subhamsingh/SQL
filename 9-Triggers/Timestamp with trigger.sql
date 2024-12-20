CREATE TABLE category (
  category_id INT NOT NULL,
  name VARCHAR2(25) NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (category_id)
);

-- Create a trigger to update last_update on any update of the row
CREATE OR REPLACE TRIGGER trg_update_last_update
BEFORE UPDATE ON category
FOR EACH ROW
BEGIN
  :NEW.last_update := CURRENT_TIMESTAMP;
END;
/

-- Inserting data into category table
INSERT INTO category (category_id, name)
VALUES (1, 'Electronics');

INSERT INTO category (category_id, name)
VALUES (2, 'Clothing');

INSERT INTO category (category_id, name)
VALUES (3, 'Books');

INSERT INTO category (category_id, name)
VALUES (4, 'Toys');

-- Inserting more rows
INSERT INTO category (category_id, name)
VALUES (5, 'Groceries');

select * from category;



-- Create a sequence for category_id to simulate AUTO_INCREMENT
CREATE SEQUENCE category_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

desc category;

-- Create a trigger to automatically set category_id using the sequence
CREATE OR REPLACE TRIGGER category_bi_trigger
  BEFORE INSERT ON category
  FOR EACH ROW
BEGIN
  :new.category_id := category_seq.NEXTVAL;
END;
/


-- Insert some sample data
INSERT INTO category (name) 
VALUES ('Books');

INSERT INTO category (name) 
VALUES ('Electronics');

INSERT INTO category (name) 
VALUES ('Clothing');

INSERT INTO category (name) 
VALUES ('Sports');