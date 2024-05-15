using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareDAX.Backend.Strings
{
    public class StringsDaxia
    {
        public static String nombreIA = "DAXIA";
        public static String Infomessage = "DAXIA: ¡Hola! ";
        public static String Infomessage1 = " voy a brindarte apoyo y recomendaciones para ayudarte a manejar el estrés, la ansiedad y la depresión. Cuentame todo lo que te sucede en un mensaje.";

        //Estas son las palabras en base que pueden ser encontradas
        public static String[] caracteristicas = {"cansado", "energia", "dolor", "falta", "motivacion", "poca", "sin", "extremo", "fisico", "mental", "emocional", "desinteres"
        , "desconexion", "trabajo", "amigos", "compañeros", "dificultad", "atencion", "tension", "ansiedad"}; //Faltan demasiadas


        public static String recomendacionespt1 = "DAXIA: Con la información que me proporcionaste es posible que tengas alguno o algunos de estos problemas: ";
        public static String recomendacionespt2 = "Las recomendaciones que te puedo dar estan basadas en las que son más utiles para los usuarios actualmente";
        public static String recomendacionespt3 = "Para ";
        public static String recomendacionespt4 = ": ";
        public static String recomendacionesFallidas = "DAXIA: No logre encontrar ninguna forma de ayudarte, parece que no tienes problemas, felicidades!!";
    }
}