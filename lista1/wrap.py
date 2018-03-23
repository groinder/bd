intos = {
    "INTO WAMPIRY": "INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA)",
    "INTO ZLECENIA": "INTO ZLECENIA (NR_ZLECENIA, DATA_ZLECENIA, PSEUDO_WAMPIRA)",
    "INTO DAWCY": "INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI)",
    "INTO DONACJE": "INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA)",
    "INTO SPRAWNOSCI": "INTO SPRAWNOSCI (SPRAWNOSC)",
    "INTO SPRAWNOSCI_W": "INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD)",
    "INTO JEZYKI_OBCE": "INTO JEZYKI_OBCE (JEZYK_OBCY)",
    "INTO JEZYKI_OBCE_W": "INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD)"
}


def match_into(text):
    for into in intos:
        if text.find(into) > -1:
            return into

    return False


with open('dane.txt', 'r') as f:
    with open('wrapped.txt', 'w') as w:
        last_into = None
        for line in f:
            r_line = line.rstrip()
            if r_line != '':
                if last_into != None:
                    w.write("INSERT " + intos[last_into] + " VALUES (" + r_line + ");\n")
                else:
                    last_into = match_into(r_line)
            else:
                last_into = None
                w.write("\n")
