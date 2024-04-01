using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace CareDAX.Backend
{
    public class IA
    {
        public String normalizar(String oracion)
        {
            String normalizar = oracion.Normalize(NormalizationForm.FormD);
            StringBuilder stringBuilder = new StringBuilder();
            foreach (char c in normalizar) if (CharUnicodeInfo.GetUnicodeCategory(c) != UnicodeCategory.NonSpacingMark) stringBuilder.Append(c);
            oracion = stringBuilder.ToString().ToLower();
            return oracion;
        }

        public String[] tokens = new String[10000]; //Acepta 10mil palabras maximo
        public static int palabras = 0;//Las palabras ingresadas
        public bool tokenizar(String oracion)
        {
            try //Controlador de excepcion para asegurar que no se pase de 10000 palabras
            {
                //Se agregara un espacio en blanco para que valga la palabra final
                oracion = oracion + " ";
                //Cadena que tendra la palabra antes de cada salto
                String palabra = "";
                //Encontrar la cantidad de palabras
                for (int i = 0; i < oracion.Length; i++)
                {
                    char c = oracion[i];
                    if (c == ' ')
                    {
                        palabras++;
                        //Eliminar todo lo que no sea letra
                        palabra = Regex.Replace(palabra, "[^a-zA-ZáéíóúüÁÉÍÓÚÜñÑ]", "");
                        tokens[palabras] = palabra;
                        palabra = "";
                    }
                    else palabra = palabra + c;
                }

                //Esto es para que siempre exista un espacio
                if (palabras == 0)
                {
                    palabras++;
                    //Eliminar todo lo que no sea letra
                    palabra = Regex.Replace(palabra, "[^a-zA-ZáéíóúüÁÉÍÓÚÜñÑ]", "");
                    tokens[palabras] = palabra;
                }
                else palabras++;

                if (palabras > 500) return false;
                return true;
            }
            catch //En caso de que se superen las palabras se regresa false
            {
                return false;
            }
        }

        public void conversion_Verbos()
        {
            //Aqui se va a revisar cada token con palabras especificas para luego cambiarlas a base

            //La lista de verbos que se revisan estan en la clase Cadenas comentadas

            //Aqui estan todas las posibilidades en orden a la lista de verbos
            //Nota: Los verbos que salgan seran las caracteristicas existentes
            //Ciclo for para cada token
            for (int i = 0; i < palabras; i++)
            {
                //Revisar que no sea nulo el valor
                if (tokens[i] != null)
                {
                    //Hacer los cambios correspondientes en los tokens

                    /*CANSADO*/
                    if (tokens[i].Equals("cansancio") || tokens[i].Equals("fatigado") || tokens[i].Equals("fatigada") || tokens[i].Equals("fatiga") || tokens[i].Equals("fatigante") || tokens[i].Equals("exhausto") || tokens[i].Equals("exhausta") || tokens[i].Equals("agotado") || tokens[i].Equals("agotador") || tokens[i].Equals("agotada") || tokens[i].Equals("rendido") || tokens[i].Equals("rendida") || tokens[i].Equals("extenuado") || tokens[i].Equals("extenuada") || tokens[i].Equals("cansado") || tokens[i].Equals("cansada")) tokens[i] = "cansado";
                    /*FALTA*/
                    else if (tokens[i].Equals("falta") || tokens[i].Equals("carencia") || tokens[i].Equals("ausencia") || tokens[i].Equals("escasez") || tokens[i].Equals("deficiencia") || tokens[i].Equals("insuficiencia")) tokens[i] = "falta";
                    /*MOTIVACION*/
                    else if (tokens[i].Equals("motivación") || tokens[i].Equals("estímulo") || tokens[i].Equals("incentivo") || tokens[i].Equals("ánimo") || tokens[i].Equals("entusiasmo") || tokens[i].Equals("impulso")) tokens[i] = "motivacion";
                    /*POCA*/
                    else if (tokens[i].Equals("poca") || tokens[i].Equals("escasa") || tokens[i].Equals("limitada") || tokens[i].Equals("reducida") || tokens[i].Equals("mínima") || tokens[i].Equals("insuficiente")) tokens[i] = "poca";
                    /*ENERGIA*/
                    else if (tokens[i].Equals("energía") || tokens[i].Equals("vitalidad") || tokens[i].Equals("fuerza") || tokens[i].Equals("vigor") || tokens[i].Equals("dinamismo") || tokens[i].Equals("entusiasmo")) tokens[i] = "energia";
                    /*SIN*/
                    else if (tokens[i].Equals("sin") || tokens[i].Equals("carecer") || tokens[i].Equals("privado de") || tokens[i].Equals("desprovisto") || tokens[i].Equals("carente")) tokens[i] = "sin";
                    /*EXTREMO*/
                    else if (tokens[i].Equals("extremo") || tokens[i].Equals("radical") || tokens[i].Equals("máximo") || tokens[i].Equals("excesivo") || tokens[i].Equals("intenso") || tokens[i].Equals("extremado")) tokens[i] = "extremo";
                    /*FISICO*/
                    else if (tokens[i].Equals("corporal") || tokens[i].Equals("material") || tokens[i].Equals("tangible") || tokens[i].Equals("soma") || tokens[i].Equals("orgánico")) tokens[i] = "fisico";
                    /*MENTAL*/
                    else if (tokens[i].Equals("intelectual") || tokens[i].Equals("cognitivo") || tokens[i].Equals("psíquico") || tokens[i].Equals("cerebral") || tokens[i].Equals("racional")) tokens[i] = "mental";
                    /*EMOCIONAL*/
                    else if (tokens[i].Equals("emocional") || tokens[i].Equals("afectivo") || tokens[i].Equals("afectiva") || tokens[i].Equals("sentimental") || tokens[i].Equals("emotivo") || tokens[i].Equals("emotiva") || tokens[i].Equals("pasional") || tokens[i].Equals("conmovedor") || tokens[i].Equals("conmovedora")) tokens[i] = "emocional";
                    /*DESINTERES*/
                    else if (tokens[i].Equals("apatia") || tokens[i].Equals("indiferencia") || tokens[i].Equals("desgano") || tokens[i].Equals("desapego") || tokens[i].Equals("desidia")) tokens[i] = "desinteres";
                    /*DESCONEXION*/
                    else if (tokens[i].Equals("desconexion") || tokens[i].Equals("separacion") || tokens[i].Equals("aislamiento") || tokens[i].Equals("distanciamiento") || tokens[i].Equals("desvinculacion")) tokens[i] = "desconexion";
                    /*TRABAJO*/
                    else if (tokens[i].Equals("labor") || tokens[i].Equals("empleo") || tokens[i].Equals("ocupacion") || tokens[i].Equals("tarea") || tokens[i].Equals("quehacer")) tokens[i] = "trabajo";
                    /*AMIGOS*/
                    else if (tokens[i].Equals("amigos") || tokens[i].Equals("compañeros") || tokens[i].Equals("colegas") || tokens[i].Equals("camaradas") || tokens[i].Equals("aliados") || tokens[i].Equals("compania")) tokens[i] = "amigos";
                    /*DIFICULTAD*/
                    else if (tokens[i].Equals("problema") || tokens[i].Equals("obstaculo") || tokens[i].Equals("desafio") || tokens[i].Equals("contratiempo") || tokens[i].Equals("complicacion")) tokens[i] = "dificultad";
                    /*ATENCION*/
                    else if (tokens[i].Equals("atencion") || tokens[i].Equals("concentracion") || tokens[i].Equals("cuidado") || tokens[i].Equals("observacion") || tokens[i].Equals("interes") || tokens[i].Equals("preocupacion")) tokens[i] = "atencion";
                    /*TENSION*/
                    else if (tokens[i].Equals("tension") || tokens[i].Equals("presion") || tokens[i].Equals("estres") || tokens[i].Equals("nerviosismo") || tokens[i].Equals("ansiedad") || tokens[i].Equals("agobio")) tokens[i] = "tension";
                    /*DOLOR*/
                    else if (tokens[i].Equals("dolor") || tokens[i].Equals("adolorido") || tokens[i].Equals("adolorida") || tokens[i].Equals("lastimado") || tokens[i].Equals("lastimada")) tokens[i] = "dolor";
                }
            }
        }
    }
}