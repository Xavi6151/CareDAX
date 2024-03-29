using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareDAX.Backend.Strings
{
    public class StringsAnsiedad
    {
        //Descripcion
        public static String description = "Este es el test de Beck, una herramienta para evaluar tu nivel de estrés. Aunque las preguntas son formuladas por nosotros, la puntuación se basa en tus respuestas seleccionadas. Cada pregunta tiene opciones predefinidas; elige la que mejor refleje tu situación actual. Al finalizar, haz clic en 'Calcular'. Recuerda ser sincero, ya que la precisión de los resultados depende de ello. Una vez completado el test, no podrás modificar tus respuestas, el resultado se mostrara tu página principal y no se mandara nada si no estan todas las preguntas respondidas.";

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

        //niveles de ansiedad
        public static String level1 = "Ansiedad muy baja";
        public static String level2 = "Ansiedad moderada";
        public static String level3 = "Ansiedad severa";

        //Cadena con el nivel del usuario
        public static String estado;
    }
}