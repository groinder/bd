create table Bandy (
  numer_bandy     number(3)    constraint b_numer_bandy_nn not null constraint b_numer_bandy_pk primary key,
  nazwa_bandy     varchar2(32) constraint b_nazwa_bandy_nn not null,
  pseudo_zarzadcy varchar2(32) constraint b_pseudo_zarzadcy_fk references Koty (pseudo_kota)
);

create table Funkcje (
  nazwa_funkcji varchar2(32) constraint f_nazwa_funkcji_nn not null constraint f_nazwa_funckji_pk primary key,
  min_myszy     number(3)    constraint min_myszy_nn not null,
  max_myszy     number(3)    constraint max_myszy_nn not null
);

ALTER TABLE Funkcje
  ADD CONSTRAINT f_min_max CHECK (min_myszy < max_myszy);

create table Koty (
  pseudo_kota     varchar2(32) constraint k_pseudo_kota_nn not null constraint k_pseudo_kota_pk primary key,
  plec_kota       char         constraint k_plec_kota_nn not null constraint k_plec_kota_ch check (plec_kota in
                                                                                                   ('K', 'M')),
  data_przyjecia  date         constraint k_data_przyjecia not null,
  przydzial_myszy number(3) constraint k_przydzial_myszy_ch check (przydzial_myszy > -1),
  pseudo_szefa    varchar2(32) constraint k_pseudo_szefa_fk references Koty (pseudo_kota),
  numer_bandy     number(3) constraint k_numer_bandy_fk references Bandy (numer_bandy),
  nazwa_funkcji   varchar2(32) constraint k_nazwa_funkcji_nn not null constraint k_nazwa_funkcji_fk references Funkcje (nazwa_funkcji)
);

ALTER TABLE Bandy
  ADD CONSTRAINT b_pseudo_zarzadcy_fk FOREIGN KEY (pseudo_zarzadcy) REFERENCES Koty (pseudo_kota)
  DEFERRABLE;

create table Myszy (
  numer_myszy     number       constraint m_numer_myszy_nn not null constraint n_numer_myszy_pk primary key,
  data_upolowania date         constraint m_data_upolowania_nn not null,
  waga            number(2)    constraint m_waga_nn not null constraint m_waga_ch check (waga > 9),
  dlugosc         number(2)    constraint m_dlugosc_nn not null constraint m_dlugosc_ch check (dlugosc > 4),
  data_wydania    date,
  pseudo_lowcy    varchar2(32) constraint m_pseudo_lowcy_nn not null constraint m_pseudo_lowcy_fk references Koty (pseudo_kota),
  pseudo_zjadacza varchar2(32) constraint m_pseudo_zjadacza_fk references Koty (pseudo_kota)
);

ALTER TABLE Myszy
  ADD CONSTRAINT m_daty CHECK (data_upolowania < data_wydania);

create table Wrogowie (
  imie_wroga       varchar2(32) constraint w_imie_wroga_nn not null constraint w_imie_wroga_pk primary key,
  stopien_wrogosci number(2)    constraint w_stopien_wrogosci_nn not null constraint w_stopien_wrogosci_ch check (stopien_wrogosci between 1 and 10),
  gatunek          varchar2(32)
);

create table Gratyfikacje (
  nazwa_gratyfikacji varchar2(32) constraint g_nazwa_gratyfikacji_nn not null constraint g_nazwa_gratyfikacji_pk primary key,
  sila_gratyfikacji  number(2)    constraint g_sila_gratyfikacji_nn not null
);

create table Tereny (
  nazwa_terenu varchar2(32) constraint t_nazwa_terenu_nn not null constraint t_nazwa_terenu_pk primary key
);

CREATE TABLE Incydenty (
  pseudo_kota VARCHAR2(32) CONSTRAINT i_pseudo_kota_fk REFERENCES Koty (pseudo_kota),
  imie_wroga  VARCHAR2(32) CONSTRAINT i_imie_wroga_fk REFERENCES Wrogowie (imie_wroga),
  data        DATE          CONSTRAINT data_nn NOT NULL,
  opis        VARCHAR2(200) CONSTRAINT opis_nn NOT NULL,
  CONSTRAINT incydenty_pk PRIMARY KEY (pseudo_kota, imie_wroga)
);

CREATE TABLE Gratyfikacje_wrogow (
  imie_wroga         VARCHAR2(32) CONSTRAINT gw_imie_wroga_fk REFERENCES Wrogowie (imie_wroga),
  nazwa_gratyfikacji VARCHAR2(32) CONSTRAINT gw_nazwa_gratyfikacji_fk REFERENCES Gratyfikacje (nazwa_gratyfikacji),
  CONSTRAINT gratyfikacje_wrogow_pk PRIMARY KEY (imie_wroga, nazwa_gratyfikacji)
);

CREATE TABLE Tereny_bandy (
  nazwa_terenu VARCHAR2(32) CONSTRAINT tb_nazwa_terenu_fk REFERENCES Tereny (nazwa_terenu),
  numer_bandy  NUMBER(3) CONSTRAINT tb_numer_bandy_fk REFERENCES Bandy (numer_bandy),
  CONSTRAINT tereny_bandy_pk PRIMARY KEY (nazwa_terenu, numer_bandy)
);

