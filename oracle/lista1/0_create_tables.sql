create table Funkcje
(
  funkcja varchar2(10) constraint funkcja_pk primary key,
  min_myszy number(3) constraint min_myszy_check check (min_myszy > 5),
  max_myszy number(3) constraint max_myszy_check check (max_myszy < 200),
  constraint max_myszy_wieksze_min_myszy check (max_myszy > min_myszy)
);

create table Bandy
(
  nr_bandy number(2) constraint nr_bandy_nn not null constraint nr_bandy_pk primary key,
  nazwa varchar2(20) constraint nazwa_nn not null,
  teren varchar2(15) constraint teren_unique unique,
  szef_bandy varchar2(15) constraint szef_bandy_unique unique
);

create table Kocury
(
  imie varchar2(15) constraint imie_nn not null,
  plec varchar2(1) constraint plec_in check (plec in ('M', 'D')),
  pseudo varchar(15) constraint pseudo_pk primary key,
  funkcja varchar2(10) constraint funkcja_fk references Funkcje(funkcja),
  szef varchar2(15) constraint szef_fk references Kocury(pseudo),
  w_stadku_od date default SYSDATE,
  przydzial_myszy number(3),
  myszy_extra number(3),
  nr_bandy number(2) constraint nr_bandy_fk references Bandy(nr_bandy)
);

alter table Bandy add constraint szef_bandy_fk foreign key (szef_bandy) references Kocury(pseudo);

create table Wrogowie
(
  imie_wroga varchar2(20) constraint imie_wroga_pk primary key,
  stopien_wrogosci number(2) constraint stopien_wrogosci_check check (stopien_wrogosci between 1 and 10),
  gatunek varchar2(15),
  lapowka varchar2(20)
);

create table Wrogowie_Kocurow
(
  pseudo varchar2(15) constraint wk_pseudo_fk references Kocury(pseudo),
  imie_wroga varchar2(15) constraint wk_imie_wroga_fk references Wrogowie(imie_wroga),
  data_incydentu date constraint data_incydentu_nn not null,
  opis_incydentu varchar2(50),
  constraint Wrogowie_Kocurow_pk primary key (pseudo, imie_wroga)
);