CREATE TABLE Wampiry (
  pseudo_wampira    VARCHAR2(15) NOT NULL,
  wampir_w_rodzinie DATE         NOT NULL,
  plec_wampira      CHAR CONSTRAINT plec_wampira_ch CHECK (plec_wampira IN ('K', 'M')),
  pseudo_szefa      VARCHAR2(15),
  PRIMARY KEY (pseudo_wampira),
  FOREIGN KEY (pseudo_szefa) REFERENCES Wampiry (pseudo_wampira)
);

CREATE TABLE Zlecenia (
  nr_zlecenia    NUMBER(6) CONSTRAINT nr_zlecenia_ch CHECK (nr_zlecenia > 0),
  data_zlecenia  DATE         NOT NULL,
  pseudo_wampira VARCHAR2(15) NOT NULL,
  PRIMARY KEY (nr_zlecenia),
  FOREIGN KEY (pseudo_wampira) REFERENCES Wampiry (pseudo_wampira)
);

CREATE TABLE Dawcy (
  pseudo_dawcy  VARCHAR2(15) NOT NULL,
  rocznik_dawcy NUMBER(4)    NOT NULL,
  plec_dawcy    CHAR CONSTRAINT plec_dawcy_ch CHECK (plec_dawcy IN ('K', 'M')),
  grupa_krwi    VARCHAR2(2) CONSTRAINT krupa_krwi_ch CHECK (grupa_krwi IN ('0', 'A', 'B', 'AB')),
  PRIMARY KEY (pseudo_dawcy)
);

CREATE TABLE Donacje (
  nr_zlecenia    NUMBER(6)    NOT NULL,
  pseudo_dawcy   VARCHAR2(15) NOT NULL,
  data_oddania   DATE         NOT NULL,
  ilosc_krwi     NUMBER(3) CONSTRAINT ilosc_krwi_ch CHECK (ilosc_krwi > 0),
  pseudo_wampira VARCHAR2(15),
  data_wydania   DATE,
  PRIMARY KEY (nr_zlecenia, pseudo_dawcy),
  FOREIGN KEY (nr_zlecenia) REFERENCES Zlecenia (nr_zlecenia),
  FOREIGN KEY (pseudo_dawcy) REFERENCES Dawcy (pseudo_dawcy),
  FOREIGN KEY (pseudo_wampira) REFERENCES Wampiry (pseudo_wampira),
  CONSTRAINT data_wydania_ch CHECK (data_wydania >= data_oddania)
);

CREATE TABLE Sprawnosci (
  sprawnosc VARCHAR2(20) NOT NULL,
  PRIMARY KEY (sprawnosc)
);

CREATE TABLE Sprawnosci_w (
  pseudo_wampira VARCHAR2(15) NOT NULL,
  sprawnosc VARCHAR2(20) NOT NULL,
  sprawnosc_od DATE NOT NULL,
  PRIMARY KEY (pseudo_wampira, sprawnosc),
  FOREIGN KEY (pseudo_wampira) REFERENCES Wampiry(pseudo_wampira),
  FOREIGN KEY (sprawnosc) REFERENCES Sprawnosci(sprawnosc)
);

CREATE TABLE Jezyki_obce (
  jezyk_obcy VARCHAR2(20) NOT NULL,
  PRIMARY KEY (jezyk_obcy)
);

CREATE TABLE Jezyki_obce_w (
  pseudo_wampira VARCHAR2(15) NOT NULL,
  jezyk_obcy VARCHAR2(20) NOT NULL,
  jezyk_obcy_od DATE NOT NULL,
  PRIMARY KEY (pseudo_wampira, jezyk_obcy),
  FOREIGN KEY (pseudo_wampira) REFERENCES Wampiry(pseudo_wampira),
  FOREIGN KEY (jezyk_obcy) REFERENCES Jezyki_obce(jezyk_obcy)
);