# 10 customer
insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('0023557923', 'Arvand', 'Darvish', '09204570290', 'Saadat Abad', 'Tehran', 'Tehran');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('4132354923', 'Ali', 'Mousavi', '09122145868', 'Vali asr', 'Tehran', 'Tehran');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('3125647091', 'Mohammad', 'Taqavi', '09125096086', 'Naft', 'Khouzestan', 'Behbahan');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('0024829431', 'Sina', 'Hosseinzadeh', '09353341719', 'Zarafshan', 'Tehran', 'Tehran');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('4134778234', 'Shayan', 'Fakhar', '09195238764', 'Sasan', 'Tehran', 'Tehran');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('0021338475', 'Yeganeh', 'Farahani', '09126199332', 'Shahid Fahmideh', 'Fars', 'Shiraz');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('0023884751', 'Melika', 'Ilkhani', '09127654389', 'Saadat Abad', 'Tehran', 'Tehran');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('0029757923', 'Fatemeh', 'Faramarzlou', '09199780340', 'Maleki', 'Fars', 'Kazeroun');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('5163557923', 'Parastou', 'Akbarzadegan', '09357630290', 'Nima Youshij', 'Khouzestan', 'Ahvaz');

insert into Customer (N_id, f_name, l_name, phone_no, street, province, city)
values ('7892445670', 'Sarvenaz', 'Fatemi', '09122005678', 'Pasargad', 'Khouzestan', 'Abadan');



# 4 supplier:
insert into Supplier (s_id, s_name, start_date, end_date, manager, street, province, city)
values ('10', 'Chekad', '2020/7/10', '2024/7/10', 'Erfan Sarabadani', 'Daademan', 'Tehran', 'Tehran');

insert into Supplier (s_id, s_name, start_date, end_date, manager, street, province, city)
values ('4', 'Barez', '2018/3/1', '2022/3/1', 'Amir Sabouri', 'Golha', 'Tehran', 'Tehran');

insert into Supplier (s_id, s_name, start_date, end_date, manager, street, province, city)
values ('21', 'lander', '2020/9/10', '2026/9/10', 'Ali Mokhtari', 'Ferdowsi', 'Yazd', 'Yazd');

insert into Supplier (s_id, s_name, start_date, end_date, manager, street, province, city)
values ('1', 'Balintech', '2020/4/1', '2010/4/1', 'Mohammad ansari', 'Alikhani', 'Esfehan', 'Sepahan shahr');



# 8 product supplied by 4 supplier :
insert into Product (s_id, p_name, model, price, rn)
values ('10', 'Cheraq Tormoz', 'tip2', 12500, 100);

insert into Product (s_id, p_name, model, price, rn)
values ('10', 'Farman', 'tip2', 65000, 10);

insert into Product (s_id, p_name, model, price, rn)
values ('4', 'Cheraq Tormoz', 'tip2', 10500, 20);

insert into Product (s_id, p_name, model, price, rn)
values ('4', 'tier', 's7', 7000, 200);

insert into Product (s_id, p_name, model, price, rn)
values ('21', 'Ayne baghal', 's5', 500, 400);

insert into Product (s_id, p_name, model, price, rn)
values ('21', 'cheraq jolo', 'tip3', 2000, 40);

insert into Product (s_id, p_name, model, price, rn)
values ('1', 'motor', 's5', 150000, 5);

insert into Product (s_id, p_name, model, price, rn)
values ('1', 'pedal', 'tip3', 5000, 100);

# 4 options for cars
insert into v_option (option_id, color, gearbox)
values ('1', 'black', 'auto');

insert into v_option (option_id, color, gearbox)
values ('2', 'white', 'manual');

insert into v_option (option_id, color, gearbox)
values ('3', 'red', 'manual');

insert into v_option (option_id, color, gearbox)
values ('4', 'white', 'auto');


# 12 vehicles with 2 brand which each has 2 models :
insert into Vehicle (VIN, model, option_id)
values ('00000001', 'tip2', '1');

insert into Vehicle (VIN, model, option_id)
values ('00000002', 'tip3', '4');

insert into Vehicle (VIN, model, option_id)
values ('00000003', 'tip2', '3');

insert into Vehicle (VIN, model, option_id)
values ('00000004', 'tip2', '3');

insert into Vehicle (VIN, model, option_id)
values ('00000005', 'tip3', '2');

insert into Vehicle (VIN, model, option_id)
values ('00000006', 'tip2', '4');

insert into Vehicle (VIN, model, option_id)
values ('00000007', 's7', '1');

insert into Vehicle (VIN, model, option_id)
values ('00000008', 's7', '1');

insert into Vehicle (VIN, model, option_id)
values ('00000009', 's5', '2');

insert into Vehicle (VIN, model, option_id)
values ('00000010', 's7', '2');

insert into Vehicle (VIN, model, option_id)
values ('00000011', 's5', '3');

insert into Vehicle (VIN, model, option_id)
values ('00000012', 's5', '1');


# 2 brands :
insert into Model (brand, model)
values ('peugeot 206', 'tip2');

insert into Model (brand, model)
values ('peugeot 206', 'tip3');

insert into Model (brand, model)
values ('haima', 's5');

insert into Model (brand, model)
values ('haima', 's7');


# 3 order(2 vehicle, 1 product) :
insert into Order_p (order_id, p_name, s_id, model, cnt, N_id)
values ('1', 'Cheraq Tormoz', '10', 'tip2', 20, '0023557923');

insert into Order_v (VIN, N_id)
values ('00000004', '4134778234');

insert into Order_v (VIN, N_id)
values ('00000011', '0024829431');


