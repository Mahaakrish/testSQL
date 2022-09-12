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