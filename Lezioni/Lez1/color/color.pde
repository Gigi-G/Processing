//creare una variabile di tipo color
color c1= color(204,154,0); //color() ci permette di istanziare una variabile di tipo color.
color c2 = #FFCC00;
noStroke();
fill(c1);
rect(0,0,25,100);
fill(c2);
rect(25,0,25,100);

//funzione color picker get()
color c3 = get(10,50);
fill(c3);
rect(50,0,25,100);
