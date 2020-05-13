drop database if exists galerija;
create database galerija;
use galerija;

create table lokacija(
sifra int not null primary key auto_increment,
naziv varchar (50) not null
);


create table fotografija(
    sifra       int not null primary key auto_increment,
    naziv       varchar(50) not null,
    opis        text,
    lokacija    int not null,
    datum datetime
);


alter table fotografija add foreign key (lokacija) references lokacija(sifra);

insert into lokacija (naziv) values ('datotekaprva');

insert into fotografija (naziv, lokacija, datum) values ('naziv.jpg', 1, '2020-05-12');