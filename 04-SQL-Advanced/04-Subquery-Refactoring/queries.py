# pylint:disable=C0111,C0103

def get_average_purchase(db):
    # return the average amount spent per order for each customer ordered by customer ID
    query = '''WITH TOTAL AS (
		SELECT
		OrderDetails.OrderID ,
		SUM(OrderDetails.UnitPrice * OrderDetails.Quantity) AS total_amount
		FROM OrderDetails
		GROUP BY OrderDetails.OrderID
		)
		SELECT
		Orders.CustomerID,
		ROUND(AVG(total_amount),2)
        FROM Orders
        JOIN TOTAL ON TOTAL.OrderID = Orders.OrderID
        GROUP BY Orders.CustomerID
        ORDER BY Orders.CustomerID
        '''
    db.execute(query)
    results = db.fetchall()
    return results

def get_general_avg_order(db):
    # return the average amount spent per order
    query = '''WITH TOTAL AS (
		SELECT
		OrderDetails.OrderID ,
		SUM(OrderDetails.UnitPrice * OrderDetails.Quantity) AS total_amount
		FROM OrderDetails
		GROUP BY OrderDetails.OrderID
		)
		SELECT
		Orders.CustomerID,
		ROUND(AVG(total_amount),2)
		FROM Orders
		JOIN TOTAL ON TOTAL.OrderID = Orders.OrderID '''
    db.execute(query)
    results = db.fetchone()
    return float(results[1])


def best_customers(db):
    # return the customers who have an average purchase greater than the general average purchase
    query = '''WITH OrderValues AS (
          SELECT
            SUM(od.UnitPrice * od.Quantity) AS value,
            od.OrderID
          FROM OrderDetails od
          GROUP BY od.OrderID
        ),
        GeneralOrderValue AS (
          SELECT ROUND(AVG(ov.value), 2) AS average
          FROM OrderValues ov
        ),
        CustomerOrderValue AS (
          SELECT
            c.CustomerID,
            ROUND(AVG(ov.value), 2) AS average
          FROM Customers c
          JOIN Orders o ON c.CustomerID = o.CustomerID
          JOIN OrderValues ov ON ov.OrderID = o.OrderID
          GROUP BY c.CustomerID
          ORDER BY c.CustomerID
        )
        SELECT
            CustomerOrderValue.CustomerID,
            CustomerOrderValue.average
        FROM CustomerOrderValue
        WHERE CustomerOrderValue.average > (SELECT average FROM GeneralOrderValue)
        ORDER BY CustomerOrderValue.average DESC'''
    return db.execute(query).fetchall()


def top_ordered_product_per_customer(db):
    # return the list of the top ordered product by each customer based on the total ordered amount in USD
    query = """
        WITH OrderedProducts AS (
            SELECT
                CustomerID,
                ProductID, SUM(OrderDetails.Quantity * OrderDetails.UnitPrice) AS ProductValue
            FROM OrderDetails
            JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
            GROUP BY Orders.CustomerID, OrderDetails.ProductID
            ORDER BY ProductValue DESC
        )
        SELECT
            CustomerID,
            ProductID,
            MAX(ProductValue) AS TopProductValue
        FROM OrderedProducts
        GROUP BY CustomerID
        ORDER BY TopProductValue DESC
    """
    return db.execute(query).fetchall()


def average_number_of_days_between_orders(db):
    # return the average number of days between two consecutive orders of the same customer
    query = """
        WITH DatedOrders AS (
            SELECT
                CustomerID,
                OrderID,
                OrderDate,
                LAG(OrderDate, 1, 0) OVER (
                    PARTITION BY CustomerID
                    ORDER By OrderDate
                ) PreviousOrderDate
            FROM Orders
        )
        SELECT ROUND(AVG(JULIANDAY(OrderDate) - JULIANDAY(PreviousOrderDate))) AS delta
        FROM DatedOrders
        WHERE PreviousOrderDate != 0"""
    return int(db.execute(query).fetchone()[0])
