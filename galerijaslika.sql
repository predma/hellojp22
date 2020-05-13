drop database if exists galerija;
create database galerija;
use galerija;

create table galerija(
    sifra       int not null primary key auto_increment,
    naziv       varchar(50) not null,
    opis        text,
    lokacija    varchar(50) not null,
    datum datetime
);
