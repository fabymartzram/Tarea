#include <GL/gl.h>
#include <GL/glut.h>
//Declarando materiales principales
GLfloat mat_ambient[] = { 0.2125,0.1275,0.054};
GLfloat mat_diffuse[] = { 0.714,0.4284,0.18144};
GLfloat mat_specular[] = { 0.393548,0.271906,0.166721};
GLfloat mat_shine[] = {32.0f};
//GLfloat light_position[0]={};
void reshape(int w, int h)
{
 glViewport(0, 0, (GLsizei) w, (GLsizei) h);
// Activamos la matriz de proyeccion.
 glMatrixMode(GL_PROJECTION);
// "limpiamos" esta con la matriz identidad.
 glLoadIdentity();
// Usamos proyeccion ortogonal
 glOrtho(-100, 100, -100, 100, -100, 100);
// Activamos la matriz de modelado/visionado.
 glMatrixMode(GL_MODELVIEW);
// "Limpiamos" la matriz
 glLoadIdentity();
}
void display(void)
{
 // Limpiamos el frame buffer
 glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
 glMatrixMode( GL_MODELVIEW_MATRIX );
 //Definimos posicion de la luz
 GLfloat light_position[]={1,1,1,0};
 //Establece la luz
 glLightfv(GL_LIGHT0,GL_POSITION, light_position);
 glLoadIdentity();
// Rotacion de 25 grados en torno al eje x
 glRotated(25.0, 1.0, 0.0, 0.0);
// Rotacion de -30 grados en torno al eje y
 glRotated(-30.0, 0.0, 1.0, 0.0);
// Dibujamos una "Tetera" y le aplico el material
 glPushMatrix();
//setMaterial
 glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient);
 glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
 glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
 glMaterialfv(GL_FRONT, GL_SHININESS, mat_shine);
 glutSolidSphere(50, 75, 75);
 glFlush();

}
void init(void)
{

 glEnable(GL_LIGHTING); // Activamos la fuente de luz
 glEnable(GL_LIGHT0); //Activamos las luces en 0
 glDepthFunc(GL_LESS); //comparación de profundidad
 glEnable(GL_DEPTH_TEST); //activa GL_DEPTH_TEST

	
}
void keyboard(unsigned char key, int x, int y)
{
switch(key)
{
case 'r':
mat_ambient[0] = 0.0f;
mat_ambient[1] = 0.0f;
mat_ambient[2] = 0.0f;
mat_ambient[3] = 1.0f;
mat_diffuse[0] = 0.5f;  
mat_diffuse[1] = 0.0f;
mat_diffuse[2] = 0.0f;
mat_diffuse[3] = 1.0f;
mat_specular[0] = 0.7f;  
mat_specular[1] = 0.6f;
mat_specular[2] = 0.6f; 
mat_specular[3] = 1.0f ;
mat_shine[0] = 0.25f;
break;
case 'c':
mat_ambient[0] = 0.19125f;
mat_ambient[1] = 0.0735f;
mat_ambient[2] = 0.0225f;
mat_ambient[3] = 1.0f;
mat_diffuse[0] = 0.7038f;  
mat_diffuse[1] = 0.27048f;
mat_diffuse[2] = 0.0828f;
mat_diffuse[3] = 1.0f;
mat_specular[0] = 0.256777f;  
mat_specular[1] = 0.137622f;
mat_specular[2] = 0.086014f; 
mat_specular[3] = 1.0f ;
mat_shine[0] = 0.1f;
break;
case 'b':
mat_ambient[0] = 0.329412f;
mat_ambient[1] = 0.223529f;
mat_ambient[2] = 0.027451f;
mat_ambient[3] = 1.0f;
mat_diffuse[0] = 0.780392f;  
mat_diffuse[1] = 0.568627f;
mat_diffuse[2] = 0.113725f;
mat_diffuse[3] = 1.0f;
mat_specular[0] = 0.992157f;  
mat_specular[1] = 0.941176f;
mat_specular[2] = 0.807843f; 
mat_specular[3] = 1.0f ;
mat_shine[0] = 0.21794872f;
break;
case 's':
mat_ambient[0] = 0.19225f;
mat_ambient[1] = 0.19225f;
mat_ambient[2] = 0.19225f;
mat_ambient[3] = 1.0f;
mat_diffuse[0] = 0.50754f;  
mat_diffuse[1] = 0.50754f;
mat_diffuse[2] = 0.50754f;
mat_diffuse[3] = 1.0f;
mat_specular[0] = 0.508273f;  
mat_specular[1] = 0.508273f;
mat_specular[2] = 0.508273f; 
mat_specular[3] = 1.0f ;
mat_shine[0] = 0.4f;
break;
case 'g':
mat_ambient[0] = 0.24725f;
mat_ambient[1] = 0.1995f;
mat_ambient[2] = 0.0745f;
mat_ambient[3] = 1.0f;
mat_diffuse[0] = 0.75164f;  
mat_diffuse[1] = 0.60648f;
mat_diffuse[2] = 0.22648f;
mat_diffuse[3] = 1.0f;
mat_specular[0] = 0.628281f;  
mat_specular[1] = 0.555802f;
mat_specular[2] = 0.366065f; 
mat_specular[3] = 1.0f ;
mat_shine[0] = 0.4f;
break;

}
glutPostRedisplay();
}

int main(int argc, char **argv)
{
// Inicializo OpenGL
 glutInit(&argc, argv);
// Activamos buffer simple y colores del tipo RGB
 glutInitDisplayMode (GLUT_RGB | GLUT_DEPTH);
// Definimos una ventana de medidas 800 x 600 como ventana de visualizacion en pixels
 glutInitWindowSize (800, 600);
// Posicionamos la ventana en la esquina superior izquierda de la pantalla.
 glutInitWindowPosition (0, 0);
// Creamos la ventana.
 glutCreateWindow ("Esfera");
// Inicializamos el sistema
 init();
 glutDisplayFunc(display);
 glutReshapeFunc(reshape);
 glutKeyboardFunc(keyboard);
 glutMainLoop();
 return 0;
}
