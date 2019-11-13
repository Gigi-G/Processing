//funzioni di disegno
//funzioni mode: va a cambiare il modo in cui processing interpreta i numeri che riguardano i colori
size(480,120);
noFill();
rect(50,60,80,80);
ellipse(50,60,80,80);

//Vedi che i parametri che ti sto passando li devi interpretare come lato
ellipseMode(CORNER); //modo di interpretare i parametri della funzione ellipse
rect(150,20,80,80);
ellipse(150,20,80,80);

ellipseMode(CENTER);
ellipse(150,20,80,80);

ellipseMode(RADIUS); //(TERZA E QUARTA) * 2
ellipse(150,20,80,80);

ellipseMode(CORNERS);
ellipse(150,20,80,80);
