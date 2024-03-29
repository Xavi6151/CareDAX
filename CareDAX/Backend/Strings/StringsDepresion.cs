using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareDAX.Backend.Strings
{
    public class StringsDepresion
    {
        //Descripción
        public static String description = "La Escala de Hamilton para la depresión es un cuestionario utilizado para evaluar la gravedad de los síntomas depresivos en una persona, lo que debes hacer es contestar honestamente cada pregunta ya que la puntuación depende de ello, la puntuación se determina con tus respuestas, al final no podras cambiar ninguna respuesta, por lo que debes estar muy seguro de tu respuesta antes de avanzar de pregunta, las preguntas estan hechas por el equipo de desarrollo ya que esta escala se hace con la forma de actuar de la persona, por lo tanto se acoplaron las preguntas para ser más precisos en tu resultado, el resultado se mostrara tu página principal.";

        //Columnas
        public static String col1 = "Preguntas";
        public static String col2 = "No";
        public static String col3 = "Leve";
        public static String col4 = "Moderado";
        public static String col5 = "Bastante";

        //Preguntas
        public static string[] valoresCambiantes = {
            "1. ¿Te sientes torpe o entumecido?",
            "2. ¿Te sientes acalorado constantemente?",
            "3. ¿Qué tan seguido te tiemblan las piernas?",
            "4. ¿Puedes relajarte cuando quieras?",
            "5. ¿Tiendes a pensar la peor situación en algún caso?",
            "6. ¿Qué tan seguido te sientes mareado o que se te va la cabeza?",
            "7. ¿Sientes que tus latidos son fuertes y acelerados?",
            "8. ¿Qué tan inestable te sientes?",
            "9. ¿Qué tan seguido te sientes asustado o atemorizado?",
            "10. ¿Qué tan seguido te sientes nervioso?",
            "11. ¿Qué tan seguido te sientes bloqueado?",
            "12. ¿Qué tan seguido te tiemblan las manos?",
            "13. ¿Te sientes inquieto o inseguro?",
            "14. ¿Tienes miedo de perder el control?",
            "15. ¿Qué tan seguido sientes que te ahogas?",
            "16. ¿Qué tan seguido tienes temor a morir?",
            "17. ¿Qué tanto sientes el miedo?",
            "18. ¿Qué tan seguido tienes problemas digestivos?"
        };

        //Botones
        public static String but_return = "Regresar";
        public static String but_calculate = "Calcular";

        //niveles de depresión
        public static String level1 = "Ansiedad muy baja";
        public static String level2 = "Ansiedad moderada";
        public static String level3 = "Ansiedad severa";
    }
}