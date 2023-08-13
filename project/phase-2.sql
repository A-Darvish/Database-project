create table Vehicle(
    VIN         char(8),
    model       varchar(20),
    option_id   varchar(20),
    primary key (VIN),
    foreign key (option_id) references v_option(option_id),
    foreign key (model) references Model(model)
);

create table Model(
    brand       varchar(20),
    model       varchar(20),
    primary key (model)
);

create table v_option(
    option_id   varchar(6),
    color       varchar(20),
    gearbox     varchar(20),
    primary key (option_id)
);

create table Supplier(
    s_id          varchar(8),
    s_name        varchar(20),
    start_date    varchar(20),
    end_date      varchar(20),
    manager       varchar(20),
    street        varchar(20),
    province      varchar(20),
    city          varchar(20),
    primary key (s_id)
);

create table Product(
    s_id        varchar(8),
    p_name      varchar(20),
    model       varchar(20),
    price       numeric(8,2),
    rn          int,
    primary key (s_id, p_name, model),
    foreign key (s_id) references Supplier(s_id),
    foreign key (model) references Model(model)
);

create table Customer(
    N_id          char(10),
    f_name        varchar(20),
    l_name        varchar(20),
    phone_no      char(11),
    street        varchar(20),
    province      varchar(20),
    city          varchar(20),
    primary key (N_id)
);

create table Order_p(
    order_id    varchar(12),
    p_name      varchar(20),
    s_id        varchar(8),
    model       varchar(20),
    cnt         int,
    N_id        char(10),
    primary key (order_id),
    foreign key (s_id, p_name, model) references Product(s_id, p_name, model),
    foreign key (N_id) references Customer(N_id)
)engine = InnoDB;

create table Order_v(
    VIN         char(8),
    N_id        char(10),
    primary key (VIN),
    foreign key (VIN) references Vehicle(VIN),
    foreign key (N_id) references Customer(N_id)
)engine = InooDB;
