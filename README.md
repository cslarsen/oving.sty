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

Under er det gitt en fullstendig LaTeX-fil med beskrivelser
av alle kommandoer og bruk.  Forklaringen står som kommentar.

For å kjøre eksempelet må du ha en del andre pakker som inputenc
og graphicx.  Dersom du ikke har inputen kan du kommentere ut denne,
og dersom du ikke har graphicx kan du ikke bruke \figur (og du må
kommentere ut definisjonen i denne .sty-fila).

For å produsere en PDF-utave av eksempelet kjører du for eksempel:

    $ latex filnavn.tex
    $ latex filnavn.tex # andre gang pga referanser
    $ dvipdf filnavn.dvi

Det kan være du kan kjøre ``pdflatex filnavn.tex'' direkte også.

Eksempeldokument
----------------

    \documentclass[a4paper,twocolumn]{article}

    \usepackage[utf8]{inputenc}
    \usepackage{oving}

    % Definer en del felter som brukes på tittelsiden
    %
    \title{Feks navn på faget}
    \subtitle{Feks "Øving 1" her}
    \author{Ditt navn}
    \date{Feks dato for innlevering}

    % Noen fag tillater gamle utgaver av læreboka,
    % og hvis det brukes oppgaver herfra er de ofte
    % litt forskjellig.  Skriv derfor i innleveringen
    % hvilken utgave av boka du har brukt.
    %
    \textbook{Lærebokas tittel og utgave}

    \begin{document}

      % Lag titteltekst, men ikke på egen side
      \maketitle

      % Skriver "Oppgave 1" i sans serif-font.
      % Prefikset "Oppgave" kan du omdefinere ved
      % \renewcommand{\oppgavename}{Nytt prefiks her}
      %
      \oppgave{1}

      Gitt en leder med elektrisk strømning

      \begin{formel}{oppg1-formel}
        i_{ab} = -5 \, \textrm{ampere} = -5 \, \textrm{C/s}
      \end{formel}

      med referanseretning fra $a$ til $b$. (...)

      Her kan vi se at (...)

      % Skriver "(a)" i fet, sans serif-font
      \deloppgave{a}

      For å finne total ladning som passerer i tre sekunder tar man
      formelen \ref{oppg1-formel} og ganger med antall sekunder. (...)

      \deloppgave{b}
      Gitt figur \ref{oppg1b-figur} kan vi regne ut (...)

        % Viser filnavn.eps (eller andre grafikkformat) \begin{figure},
        % men med norsk prefiks på teksten og med referanse "oppg1b-figur".
        %
        \figur {filnavn.eps}
               {oppg1b-figur}
               {Tverrsnitt av leder med strømning $i_{ab}$}

 \end{document}
