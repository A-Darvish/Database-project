
create table brands_logs(
    id         int,
    brand_id   int,
    old_name   varchar(20) default null,
    new_name   varchar(20) default null,
    changed_at date,
    primary key (id),
    foreign key (brand_id) references brands(id)
);

create table brands(
    id  int,
    name varchar(20),
    primary key (id)
);
#############################################
delimiter //
create trigger insertion_trigger before insert on brands_logs
    for each row
    begin
    set new.brand_id = new.id,
        new.old_name = null,
        new.new_name = irankhodro.brands.name,
        new.changed_at = curdate();
    end //
delimiter ;

#########################################################
delimiter //
create trigger update_trigger before update on brands
    for each row
    begin
    set irankhodro.brands_logs.brand_id = new.id,
        irankhodro.brands_logs.old_name = old.name,
        irankhodro.brands_logs.new_name = new.name,
        irankhodro.brands_logs.changed_at = curdate();
    end //
delimiter ;

#######################################################################
delimiter //
create trigger delete_trigger after delete on brands_logs
    for each row
    begin
        delete from brands_logs
            where id = old.id;
    end //
delimiter ;