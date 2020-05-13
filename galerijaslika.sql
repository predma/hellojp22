drop database if exists galerija;
create database galerija;
use galerija;

create table lokacija(
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
autor int not null
);


create table fotografija(
    sifra       int not null primary key auto_increment,
    naziv       varchar(50) not null,
    opis        text,
    lokacija    int not null,
    datum datetime
);


create table autor (
 sifra       int not null primary key auto_increment,
 ime varchar(50) not null,
 prezime varchar(50) not null
);


alter table fotografija add foreign key (lokacija) references lokacija(sifra);
alter table lokacija add foreign key (autor) references autor(sifra);

insert into autor (ime, prezime) values ('John', 'Lenon');

insert into lokacija (naziv, autor) values ('datotekaprva', 1);

insert into fotografija (naziv, lokacija, datum) values ('naziv.jpg', 1, '2020-05-12');

