drop database if exists autoservis;
create database autoservis;
use autoservis;

create table osoba (
id int not null primary key auto_increment,
ime varchar (50) not null,
prezime varchar (50) not null,
adresa varchar (100),
mjesto varchar (50)

);


create table serviser(
id int not null primary key auto_increment,
osobaid int not null

);

create table klijent(
id int not null primary key auto_increment,
osobaid int not null

);

create table vozilo (
id int not null primary key auto_increment,
modelid int not null,
regoznaka varchar (50),
brsasije varchar (50)
);

create table servis (
id int not null primary key auto_increment,
naziv varchar (50),
opis text

);

create table model(
id int not null primary key auto_increment,
marka varchar (50),
model varchar (50),
tip varchar (50),
motor varchar (50)

);

create table vozilo_servis(
id int not null primary key auto_increment,
voziloid int not null,
servisid int not null,
datum datetime,
serviserid int not null,
klijentid int not null,
cijena decimal (18,2),
km int not null

);


alter table vozilo_servis add foreign key (voziloid) references vozilo(id);
alter table vozilo_servis add foreign key (servisid) references servis(id);
alter table vozilo_servis add foreign key (serviserid) references serviser(id);
alter table vozilo_servis add foreign key (klijentid) references klijent(id);

alter table vozilo add foreign key (modelid) references model(id);


alter table serviser add foreign key (osobaid) references osoba(id);
alter table klijent add foreign key (osobaid) references osoba(id);