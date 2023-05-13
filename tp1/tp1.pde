
//nombre: Emilia Santa Maria
//comision: 5
//Legajo: 94031/2

int pantalla = 0;
int contador = 0;

float posicionDelTextEnx;
float posicionDelTextEnY;



int resultado;
int velocidad;
int posicionXBoton = 350;
int posicionYBoton = 400;
int tamanioEnXBoton = 300;
int tamanioEnYBoton = 100;
color colorDeFondo = 255;
color colorDeTexto = 200;
color colorDeLineaDeBoton = 150;
color colorDeBoton = 200;
boolean botonOk  = false;

PImage imagen1;
PImage imagen2;
PImage imagen3;

PFont font;
int opacidad = 0;
int direccion = 1;
float x = 0;

float posX = 20;
float posY = 0;



void setup() {

  size(640, 480);

  font= loadFont("PerpetuaTitlingMT-Bold-48.vlw");
  textFont(font);

  // imagenes
  imagen1 = loadImage("imagen 1.jpg");
  imagen2 = loadImage("imagen 2.png");
  imagen3 = loadImage("imagen 3.png");

  textAlign( LEFT, CENTER );
}

void draw() {
  background(colorDeFondo);
  switch (pantalla) {

    // pantalla 1
  case 0:
    image(imagen1, 0, 0);
    imagen1.resize(640, 480);
    contador++;
    println("Estado 0 ", contador);
    if (contador >= 800) {
      contador = 2;
      pantalla = 1;
    }

    // resultado = 2;
    // posicionInicialEnX = width;
    // posicionDelTextEnX = posicionInicialEnX;

    fill(0, 30, 20, contador);
    textSize(20);
    text("Las palas han sido utilizadas por los humanos, \n desde tiempos prehistóricos, \n y su diseño básico ha cambiado, \n muy poco con el tiempo.", width/45, height/2);




    break;
    // pantalla 2
  case 1:
    image(imagen2, 0, 0);
    imagen2.resize(640, 480);
    contador++;
    println("Estado 1 ", contador);
    if (contador >= 800) {
      contador = 0;
      pantalla = 2;
    }
    // ajustar velocidad para que este mas lento

    fill(0);
    textSize(20);
    posY = posY + 0.5;
    text("La invención de la pala permitió aumentar, \n la producción .revolucionó la vida rural y,\n las condiciones de vida de los campesinos.", posX, posY);

    if (posY > height) {
      posY = 0;
    }

    break;
    // pantalla 3

  case 2:
    image(imagen3, 0, 0);
    imagen3.resize(640, 480);
    contador++;
    println("Estado 2", contador);
    if (contador >= 800) {
      contador = 0;
      pantalla = 3;
    }

    translate(x, 0);

    textSize(20);
    text("Hoy en dia dependiendo del tipo de pala, \n esta puede servir para, \n excavar, transportar \n o desplazar materiales de un sitio a otro, \n según su forma y material.", 0, 100);

    x = x + 0.4;

    if (x > width) {
      x = 0;
    }

    // ultima pantalla
    break;

  case 3:
    background(255);
    contador++;
    println("Estado 3", contador);
    if (contador >= 800 ) {

      contador= 0;
      pantalla = 3;
    }

    stroke(colorDeLineaDeBoton);
    fill(colorDeBoton);
    rect(posicionXBoton, posicionYBoton, tamanioEnXBoton, tamanioEnYBoton);
    fill(colorDeTexto);
    text("Reiniciar", posicionXBoton + tamanioEnXBoton/12, posicionYBoton + tamanioEnYBoton / 2);
  }
}

void mouseMoved() {

  if (mouseX > posicionXBoton && mouseX < posicionXBoton + tamanioEnXBoton
    && mouseY > posicionYBoton && mouseY < posicionYBoton + tamanioEnYBoton) {
    colorDeLineaDeBoton = color(0, 255, 0);
    colorDeBoton = color(255, 0, 250);
    colorDeTexto = color(150, 120, 20);
    botonOk = true;
  } else {
    colorDeLineaDeBoton  = 255;
    colorDeBoton = 255;
    colorDeTexto = 200;
    botonOk = false;
  }
}

void mouseClicked() {
  if (botonOk == true) {
    pantalla = 0;
  }
}
