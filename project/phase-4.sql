insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('1234567810', 'Sherlock', 'holmes', '44796268462', '212 Baker street', 'London', 'London');

insert into Order_v (VIN, N_id)
values ('00000001', '1234567810');

update Customer
    set phone_no = '44734278008'
    where N_id = '1234567810';

delete from Customer
where N_id not in (select distinct N_id
                   from Customer natural left outer join Order_v natural left outer join Order_p
                   where VIN is not null or p_name is not null );


