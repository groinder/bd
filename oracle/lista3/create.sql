drop table kocury2;
drop table plebs;
drop table elita;
drop table konto;
drop table incydenty;
drop type mysz_typ;
drop type elita_typ;
drop type plebs_typ;
drop type incydenty_typ;
drop type kocur;

create or replace type kocur as object
(
  imie            varchar2(15),
  plec            varchar2(1),
  pseudo          varchar2(15),
  funkcja         varchar2(10),
  szef            ref kocur,
  w_stadku_od     date,
  przydzial_myszy number(3),
  myszy_extra     number(3),
  nr_bandy        number(2),
  member
  function get_staz return number,
  member
  function get_lata_stazu return number
) not final;

create or replace type body kocur as
  member function get_staz return number is
    begin
      return sysdate - w_stadku_od;
    end;
  member function get_lata_stazu return number is
    begin
      return get_staz() / 365;
    end;
end;

create table kocury2 of kocur
(
  pseudo constraint pseudo_nn not null constraint kocur_pseudo_pk primary key
);

alter table kocury2
  add constraint kocur_imie_nn check (imie is not null);
alter table kocury2
  add constraint kocur_plec_nn check (plec is not null);
alter table kocury2
  add constraint kocur_w_stadku_od_nn check (w_stadku_od is not null);
alter table kocury2
  add constraint kocur_plec_in check (plec in ('M', 'K'));

create or replace type plebs_typ under kocur
(
  plebs_od date,
  member
  function get_lata_bycia_plebsem return number
);

create type body plebs_typ as
  member function get_lata_bycia_plebsem return number is
    begin
      return (sysdate - plebs_od) / 365;
    end;
end;

create table plebs of plebs_typ
(
  pseudo constraint plebs_pseudo_nn not null constraint plebs_pseudo_pk primary key
);

alter table plebs
  add constraint plebs_od_nn check (plebs_od is not null);
alter table plebs
  add constraint plebs_imie_nn check (imie is not null);
alter table plebs
  add constraint plebs_plec_nn check (plec is not null);
alter table plebs
  add constraint plebs_w_stadku_od_nn check (w_stadku_od is not null);
alter table plebs
  add constraint plebs_plec_in check (plec in ('M', 'K'));

create or replace type elita_typ under kocur
(
  elita_od date,
  sluga    ref plebs_typ,
  member
  function get_imie_slugi return varchar2,
  member
  function get_lata_bycia_elita return number
);

create or replace type body elita_typ as
  member function get_imie_slugi return varchar2 is
    sluga_obj plebs_typ;
    begin
      select deref(SELF.SLUGA) into sluga_obj from dual;
      return sluga_obj.imie;
    end;
  member function get_lata_bycia_elita return number is
    begin
      return (sysdate - elita_od) / 365;
    end;
end;

create table elita of elita_typ
(
  pseudo constraint elita_pseudo_nn not null constraint elita_pseudo_pk primary key
);

alter table elita
  add constraint elita_od_nn check (elita_od is not null);
alter table elita
  add constraint elita_imie_nn check (imie is not null);
alter table elita
  add constraint elita_plec_nn check (plec is not null);
alter table elita
  add constraint elita_w_stadku_od_nn check (w_stadku_od is not null);
alter table elita
  add constraint elita_plec_in check (plec in ('M', 'K'));

create or replace type mysz_typ as object
(
  numer             number,
  data_wprowadzenia date,
  data_usuniecia    date,
  wlasciciel        ref elita_typ,
  member
  function get_staz_wlasciciela return number,
  member
  function get_wiek return number
);

create or replace type body mysz_typ as
  member function get_staz_wlasciciela return number is
    wlasciciel_obj elita_typ;
    begin
      select deref(SELF.wlasciciel) into wlasciciel_obj from dual;
      return wlasciciel_obj.get_staz();
    end;
  member function get_wiek return number is
    begin
      return round(nvl(data_usuniecia, sysdate) - data_wprowadzenia);
    end;
end;

create table konto of mysz_typ
(
  numer constraint konto_numer_nn not null constraint konto_numer_pk primary key
);

alter table konto
  add constraint data_wprowadzenia_nn check ( data_wprowadzenia is not null );
alter table konto
  add constraint wlasciciel_nn check ( wlasciciel is not null );
alter table konto
  add constraint data_usuniecia_ck check ( DATA_WPROWADZENIA <= DATA_USUNIECIA );

create or replace type incydenty_typ as object
(
  kot            ref kocur,
  imie_wroga     varchar2(15),
  data_incydentu date,
  opis_incydentu varchar2(50),
  member
  function czy_sytuacja_ucichla return boolean,
  member
  function staz_w_momencie_incydentu return number
);

create or replace type body incydenty_typ as
  member function czy_sytuacja_ucichla return boolean is
    begin
      return (sysdate - data_incydentu) > 180;
    end;
  member function staz_w_momencie_incydentu return number is
    kot_obj kocur;
    begin
      select deref(SELF.kot) into kot_obj from dual;
      return data_incydentu - kot_obj.W_STADKU_OD;
    end;
end;

create table incydenty of incydenty_typ;

alter table incydenty
  add constraint incydenty_pseudo_nn check ( kot is not null );
alter table incydenty
  add constraint imie_wroga_nn check ( imie_wroga is not null );
alter table incydenty
  add constraint data_incydentu_nn2 check ( data_incydentu is not null );
alter table incydenty
  add constraint opis_incydentu_nn2 check ( opis_incydentu is not null );