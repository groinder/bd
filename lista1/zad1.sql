CREATE TABLE Wampiry (
  pseudo_wampira    VARCHAR2(15) CONSTRAINT w_pseudo_wampira_nn NOT NULL CONSTRAINT pseudo_wampira_pk PRIMARY KEY,
  wampir_w_rodzinie DATE         CONSTRAINT w_wampir_w_rodzinie_nn NOT NULL,
  plec_wampira      CHAR         CONSTRAINT w_plec_wampira_nn NOT NULL CONSTRAINT plec_wampira_ch CHECK (plec_wampira IN ('K', 'M')),
  pseudo_szefa      VARCHAR2(15) CONSTRAINT w_pseudo_szefa_fk REFERENCES Wampiry (pseudo_wampira)
);

CREATE TABLE Zlecenia (
  nr_zlecenia    NUMBER(6)    CONSTRAINT z_nr_zlecenia_nn NOT NULL CONSTRAINT nr_zlecenia_pk PRIMARY KEY CONSTRAINT nr_zlecenia_ch CHECK (nr_zlecenia > 0),
  data_zlecenia  DATE         CONSTRAINT z_data_zlecenia_nn NOT NULL,
  pseudo_wampira VARCHAR2(15) CONSTRAINT z_pseudo_wampira_nn NOT NULL CONSTRAINT pseudo_wampira_fk REFERENCES Wampiry (pseudo_wampira)
);

CREATE TABLE Dawcy (
  pseudo_dawcy  VARCHAR2(15) CONSTRAINT da_pseudo_dawcy_nn NOT NULL CONSTRAINT pseudo_dawcy_pk PRIMARY KEY,
  rocznik_dawcy NUMBER(4)    CONSTRAINT da_rocznik_dawcy_nn NOT NULL,
  plec_dawcy    CHAR         CONSTRAINT da_plec_dawcy_nn NOT NULL CONSTRAINT plec_dawcy_ch CHECK (plec_dawcy IN ('K', 'M')),
  grupa_krwi    VARCHAR2(2)  CONSTRAINT da_grupa_krwi_nn NOT NULL CONSTRAINT grupa_krwi_ch CHECK (grupa_krwi IN ('0', 'A', 'B', 'AB'))
);

CREATE TABLE Donacje (
  nr_zlecenia    NUMBER(6)    CONSTRAINT do_nr_zlecenia_nn NOT NULL CONSTRAINT nr_zlecenia_fk REFERENCES Zlecenia (nr_zlecenia),
  pseudo_dawcy   VARCHAR2(15) CONSTRAINT do_pseudo_dawcy_nn NOT NULL CONSTRAINT pseudo_dawcy_fk REFERENCES Dawcy (pseudo_dawcy),
  data_oddania   DATE         CONSTRAINT do_data_oddania_nn NOT NULL,
  ilosc_krwi     NUMBER(3)    CONSTRAINT do_ilosc_krwi_nn NOT NULL CONSTRAINT ilosc_krwi_ch CHECK (ilosc_krwi > 0),
  pseudo_wampira VARCHAR2(15) CONSTRAINT do_pseudo_wampira_fk REFERENCES Wampiry (pseudo_wampira),
  data_wydania   DATE,
  CONSTRAINT Donacje_pk PRIMARY KEY (nr_zlecenia, pseudo_dawcy),
  CONSTRAINT do_data_wydania_ch CHECK (data_wydania >= data_oddania)
);

CREATE TABLE Sprawnosci (
  sprawnosc VARCHAR2(20) CONSTRAINT s_sprawnosc_nn NOT NULL CONSTRAINT sprawnosc_pk PRIMARY KEY
);

CREATE TABLE Sprawnosci_w (
  pseudo_wampira VARCHAR2(15) CONSTRAINT sp_pseudo_wampira_nn NOT NULL CONSTRAINT sp_pseudo_wampira_fk REFERENCES Wampiry (pseudo_wampira),
  sprawnosc      VARCHAR2(20) CONSTRAINT sp_sprawnosc_nn NOT NULL CONSTRAINT sp_sprawnosc_fk REFERENCES Sprawnosci (sprawnosc),
  sprawnosc_od   DATE         CONSTRAINT sp_sprawnosc_od_nn NOT NULL,
  CONSTRAINT sprawnosci_w_pk PRIMARY KEY (pseudo_wampira, sprawnosc)
);

CREATE TABLE Jezyki_obce (
  jezyk_obcy VARCHAR2(20) CONSTRAINT jo_jezyk_obcy_nn NOT NULL CONSTRAINT jezyk_obcy_pk PRIMARY KEY
);

CREATE TABLE Jezyki_obce_w (
  pseudo_wampira VARCHAR2(15) CONSTRAINT jow_pseudo_wampira_nn NOT NULL CONSTRAINT jow_pseudo_wampira_fk REFERENCES Wampiry (pseudo_wampira),
  jezyk_obcy     VARCHAR2(20) CONSTRAINT jow_jezyk_obcy_nn NOT NULL CONSTRAINT jow_jezyk_obcy_fk REFERENCES Jezyki_obce (jezyk_obcy),
  jezyk_obcy_od  DATE         CONSTRAINT jow_jezyk_obcy_od_nn NOT NULL,
  CONSTRAINT jow_pk PRIMARY KEY (pseudo_wampira, jezyk_obcy)
);