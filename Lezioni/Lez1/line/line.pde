size(480,120);
strokeWeight(24);

//bordi arrotondati
line(60,25,130,95);

//levare bordi arrotondati
strokeCap(SQUARE);
line(160,25,230,95);

//bordi quadrati proiezione del 1° esempio
strokeCap(PROJECT);
line(260,25,330,95);

strokeCap(ROUND); //costante di default bordi arrotindati
line(360,25,430,95);
