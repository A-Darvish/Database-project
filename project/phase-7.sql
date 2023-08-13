create assertion rn_controller
    check(
        not exists(select *
                   from Product
                   where rn <= 0)
    );

create assertion order_v_controller
    check(
            unique (select f.VIN
                    from Order_v as f, Order_v as s
                    where f.VIN = s.VIN)
    );
