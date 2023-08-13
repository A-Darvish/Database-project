alter table Vehicle add is_sold varchar(8) default 'False';

update Vehicle
    set is_sold = 'True'
    where VIN in (select VIN from customer_orders_v);

########################################################################
set autocommit = 0;
start transaction;
insert into Order_v (VIN, N_id)
values ('00000002', '0023557923');
update Vehicle
set  is_sold = 'True'
where VIN = '00000002';
commit;
set autocommit = 1;


set autocommit = 0;
start transaction;
insert into Order_p (order_id, p_name, s_id, model, cnt, N_id)
values ('32', 'motor', '1', 's5', 4, '1234567810');
update Product
set rn = rn - 4
where (p_name, s_id, model) = ('motor', '1', 's5');
commit;
set autocommit = 1;

