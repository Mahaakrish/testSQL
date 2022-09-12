create table customer(custID int(10) primary key auto_increment, 
name varchar(50) NOT NULL,
dob date,
phno int(10),
mail varchar(30),
passportNo varchar(15) unique);

create table flight(flID int(10) primary key,
name varchar(20),
capacity int(5));

create table trip(trID int(10) primary key,
flID int(10), foreign key(flID) references flight(flID),
travel_from varchar(20),
travel_to varchar(20),
platform int(3),
travel_date datetime,
price float(5));

create table ticket(tID int(10) primary key,
custID int(10),foreign key(custID) references customer(custID),
seatNo varchar(3) not null,
trID int(10),foreign key(trID) references trip(trID));

insert into customer value(1,'Mahaan','1997-06-11',8892826045,'mahaaakrish@gmail.com','13ada234');
insert into customer value(2,'Prashu','1997-06-11',8892826045,'mahaaakrish@gmail.com','13aea624');
insert into customer value(3,'Manu','1997-06-11',8892826045,'mahaaakrish@gmail.com','13aea244');
insert into customer value(4,'Maddy','1997-06-11',8892826045,'mahaaakrish@gmail.com','41atf201');

insert into flight value(111,'AirAsia',50);
insert into flight value(121,'AirIndia',70);
insert into flight value(200,'JetBlue',120);

insert into trip value(1,111,'BLR','DEL',4,'2022-09-08 10:00:00',2999);
insert into trip value(2,111,'BLR','DEL',4,'2022-09-10 10:00:00',2999);
insert into trip value(3,200,'DEl','PAR',2,'2022-09-08 14:30:00',10499);
insert into trip value(4,121,'DUB','BLR',1,'2022-09-11 17:00:00',24499);

insert into ticket value(1,1,'A12',1);
insert into ticket value(2,2,'A11',1);
insert into ticket value(3,1,'B31',3);
insert into ticket value(4,3,'D11',3);
insert into ticket value(5,2,'A11',4);
insert into ticket value(6,4,'E24',2);

//copy
insert into ticket value(1,1,'A12',1);
insert into ticket value(2,2,'A11',1);
insert into ticket value(3,1,'B31',3);
insert into ticket value(4,3,'D11',3);
insert into ticket value(5,2,'A11',4);
insert into ticket value(6,4,'E24',2);