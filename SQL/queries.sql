
CREATE TABLE customer_list
(
	customer_id   INT         AUTO_INCREMENT PRIMARY KEY,
	customer_name VARCHAR(60) NOT NULL                  ,
	phone_no      CHAR(10)    NOT NULL
);

CREATE TABLE customer_total_debit
(
	cust_id 	INT                                   ,
	debit_id    INT AUTO_INCREMENT PRIMARY KEY        ,
	total_debit INT DEFAULT 0                         ,
	CONSTRAINT  customer_list_customer_total_debit_fk
	FOREIGN KEY (cust_id)
	REFERENCES  customer_list(customer_id)
);

CREATE TABLE purchased_products
(
	cust_id         INT                           ,
	purchased_id    INT AUTO_INCREMENT PRIMARY KEY,
	product_name    VARCHAR(80)        NOT NULL   ,
	product_ammount DECIMAL(13, 4)     NOT NULL   ,
	purchased_date  DATE                          , 
	purchased_TIME  TIME 						  ,
	CONSTRAINT      customer_list
	FOREIGN KEY     (cust_id)
	REFERENCES      customer_list(customer_id)        
);


-- Getting current date in dd/mm/yy
SELECT DATE_FORMAT(CURDATE(), "%d/%m/%y");


-- Getting current date in dd/mm/yyyy
SELECT DATE_FORMAT( CURDATE() , "%d/%m/%Y")

-- Getting current time in hh:mm:
SELECT TIME_FORMAT(CURRENT_TIME, "%h:%i %p");


-- mysql> DESC TEST;
-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | ddate | date | YES  |     | NULL    |       |
-- | ttime | time | YES  |     | NULL    |       |
-- +-------+------+------+-----+---------+-------+

-- mysql> INSERT INTO TEST VALUES ( CURDATE(), CURTIME() );

-- mysql> SELECT * FROM TEST;
-- +------------+----------+
-- | ddate      | ttime    |
-- +------------+----------+
-- | 2021-12-27 | 21:09:44 |
-- +------------+----------+

-- mysql> select TIME_FORMAT( tTIME, "%h:%i %p") as time , DATE_FORMAT(ddate, "%d/%m/%y") as date from test;
-- +----------+----------+
-- | time     | date     |
-- +----------+----------+
-- | 09:09 PM | 27/12/21 |
-- +----------+----------+
