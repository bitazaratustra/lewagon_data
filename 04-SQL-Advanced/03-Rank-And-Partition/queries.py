# pylint:disable=C0111,C0103

def order_rank_per_customer(db):
    query = '''SELECT Orders.OrderID , Orders.CustomerID, Orders.OrderDate,
RANK() OVER(PARTITION BY Orders.CustomerID ORDER BY Orders.OrderDate) AS OrderRank
FROM Orders'''
    db.execute(query)
    results = db.fetchall()
    return results


def order_cumulative_amount_per_customer(db):
    query = '''SELECT Orders.OrderID , Orders.CustomerID, Orders.OrderDate,
SUM(SUM(OrderDetails.UnitPrice * OrderDetails.Quantity))
OVER(PARTITION BY Orders.CustomerID ORDER BY Orders.OrderDate)
FROM Orders
JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
group by  Orders.OrderDate
order by Orders.CustomerID
'''
    db.execute(query)
    results = db.fetchall()
    return results
