# Facial-Recognition

*eigenface_core.m
Am citit imaginile și le-am transformat in vectori coloana. Acestia se
concateneaza pentru a obtine matricea T. Am făcut media pe fiecare linie a lui T și am scazut din
linia respectiva. Am aflat valorile singulare ale matricei A noi obtinute și am eliminat,facand 0,
fiecare vector propriu care corespunde unei valori singulare mai mici decât 1. Dupa aceea am
calculat matricea fetelor si proiectia acesteia.

*face_recognition:
Se citeste matricea conform imaginii si se reprezinta ca vector coloana. Apoi am scazut
din acesta m și am calculat proiectia noului vector. Am obținut imaginea cea mai fidela din setul de
date imaginii curente și am retinut indicele.
