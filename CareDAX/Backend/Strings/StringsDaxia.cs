using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareDAX.Backend.Strings
{
    public class StringsDaxia
    {
        public static String nombreIA = "DAXIA";
        public static String Infomessage = "DAXIA: ¡Hola! Quería recordarte que esta aplicación web no reemplaza la ayuda de un terapeuta profesional. Soy DAXIA, la IA que está aquí para brindarte apoyo y recomendaciones para ayudarte a manejar el estrés, la ansiedad y la depresión, pero es importante entender que no puedo proporcionar terapia en el sentido tradicional. Siempre es recomendable buscar la orientación de un profesional de la salud mental para obtener un tratamiento completo y personalizado. Estoy aquí para acompañarte en tu viaje hacia el bienestar emocional. Cuentame todo lo que te sucede en un mensaje.";
        public static String[] caracteristicas = {"cansado", "energia", "dolor", "falta", "motivacion", "poca", "sin", "extremo", "fisico", "mental", "emocional", "desinteres"
        , "desconexion", "trabajo", "amigos", "compañeros", "dificultad", "atencion", "tension", "ansiedad"}; //Faltan demasiadas
        public static String recomendacionespt1 = "DAXIA: Con la información que me proporcionaste es posible que tengas alguno o algunos de estos problemas: ";
        public static String recomendacionespt2 = "Las recomendaciones que te puedo dar estan divididas en 3 partes y estan relacionadas a tus problemas, las que más han ayudado a la gente(+), las que ayudan a la gente pero un poco menos efectivo(/), y las que casi nadie ha utilizado pero eso no significa que no te pueden ayudar(-): ";
        public static String recomendacionespt3 = "Para ";
        public static String recomendacionespt4 = " te recomiendo: ";
        public static String recomendacionesFallidas = "DAXIA: No logre encontrar ninguna forma de ayudarte, parece que no tienes problemas, felicidades!!";
    }
}