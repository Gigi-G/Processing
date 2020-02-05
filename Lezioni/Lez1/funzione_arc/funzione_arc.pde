//funzione arc per i primi quattro parametri si comporta come un ellipse, poi bisogna aggiungere i punti di inizio e di fine una ellipse. Utile per disegnare torte tagliate.
size(480,120);

//PI = 180, HALF_PI = 90, 0 = 0, QUARTER_PI = 45, TWO_PI = 360
arc(90,60,80,80,0,HALF_PI);
arc(190,60,80,80,0,PI + HALF_PI);
arc(290,60,80,80,PI,TWO_PI + HALF_PI);
arc(390,60,80,80,QUARTER_PI,PI+QUARTER_PI);

//radians() trasforma i gradi in radianti
