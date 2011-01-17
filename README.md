oving.sty
=========
oving.sty er et enkelt LaTeX stilark for innlevering av øvinger i teknologiske fag.

Rettigheter
-----------
Versjon 2011-01-17

Laget av Christian Stigen Larsen, http://csl.sublevel3.org

Publisert som allemannseie, altså public domain.

Introduksjon
------------
Dette er en enkel pakke for LaTeX for å skrive øvinger.

Pakken (eller "stilarket") passer ypperlig for innleveringer av øvinger i matematikk, fysikk og informatikk.

På Github-siden er det gitt en fullstendig LaTeX-fil med beskrivelser
av alle kommandoer og bruk.  Forklaring av kommandoer står som kommentarer.

For å kjøre eksempelet må du ha en del andre pakker som inputenc
og graphicx.  Dersom du ikke har inputen kan du kommentere ut denne,
og dersom du ikke har graphicx kan du ikke bruke \figur (og du må
kommentere ut definisjonen i denne .sty-fila).

For å produsere en PDF-utave av eksempelet kjører du for eksempel:

    $ latex filnavn.tex
    $ latex filnavn.tex # andre gang pga referanser
    $ dvipdf filnavn.dvi

Det kan være du kan kjøre `pdflatex eksempel.tex` direkte også.

Eksempeldokument
----------------
Se dokumentet `eksempel.tex` for forklaring på alle kommandoer og resultatfilen `eksempel.pdf` for hvordan det vil se ut.
