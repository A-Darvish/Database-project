create view supplier_supplies as
    select *
    from Product natural join Supplier;

# in here we could have all the orders(products and vehicles) in one view but it would add a lot of null values into our table.
# so we bring it down into 2 views, one for product orders  and one for vehicle orders.
create view customer_orders_v as
    select *
    from Order_v natural join Vehicle natural join Customer;
create view customer_orders_p as
    select *
    from Order_p natural join Product natural join Customer;


create view car_brand_model as
    select *
    from Vehicle natural join v_option natural join Model;

