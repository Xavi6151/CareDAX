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

        //Columna
        public static String questions = "Preguntas";

        //Preguntas
        public static string[] valoresCambiantes = {
            "1. ¿Expresas tus sentimientos cuando te sientes mal? (depresión, tristeza, desesperanza, desamparo, sentimiento de inutilidad).",
            "2. ¿Sientes que tienes la culpa por algo?",
            "3. ¿Has pensado en suicidarte?",
            "4. ¿Tienes problemas para dormir entre 10-30?",
            "5. ¿Tienes problemas para dormir entre 30-60 min?",
            "6. ¿Tienes problemas para dormir entre +60 min?",
            "7. ¿Cómo te sientes en tus actividades diarias?",
            "8. ¿Tienes problemas en tu inhibición psicomotora? (lentitud de pensamiento y lenguaje, facultad de concentración disminuida, disminución de la actividad motora)",
            "9. ¿Tienes agitación psicomotora? (jugar con tus dedos, cabello, manos, morderte las uñas, tirar de tu cabello, morderte los labios, etc.)",
            "10. ¿Tiendes a incrementar tus sensaciones o emociones?",
            "11. ¿Qué tan seguido tienes los siguientes síntomas? (signos físicos de ansiedad: gastrointestinales: sequedad de boca, diarrea, eructos, indigestión, etc.; cardiovasculares: palpitaciones, cefaleas; respiratorios: hiperventilación,\tsuspiros; frecuencia de micción incrementada;   transpiración)",
            "12. ¿Has comido sin tener hambre?",
            "13. ¿Te sientes agotado?",
            "14. ¿Tienes problemas genitales? (disminución de libido y trastornos menstruales)",
            "15. ¿Sientes preocupación por tu salud y sientes cambios físicos derivados de estos?",
            "16. ¿Cuánto ha bajado de peso en una semana?",
            "17. Cuando tienes un malestar físico y/o emocionales haces:"
        };

        //Respuestas rdb1
        public static string[] answerrdb1 = {
            "No",
            "No",
            "No",
            "No tengo dificultad",
            "No tengo dificultad",
            "No tengo dificultad",
            "Tengo dificultad",
            "Todo está normal",
            "Ninguna",
            "No",
            "No",
            "No",
            "No",
            "No",
            "No",
            "Menos 500 gr",
            "Me doy cuenta de que estoy deprimido/a y/o enfermo/a"
        };

        //Respuestas rdb1
        public static string[] answerrdb2 = {
            "Solo si me preguntan",
            "Sí",
            "Me parece que la vida no vale la pena",
            "Tengo dificultad ocasional",
            "Tengo dificultad ocasional",
            "Tengo dificultad ocasional",
            "Tengo ideas o sentimientos de incapacidad",
            "Tengo un ligero retraso al hablar",
            "Juego con los dedos",
            "Me irritan, pero no las expreso",
            "Ligera",
            "Sí",
            "Sí",
            "Pocos",
            "Sí, pero corporalmente",
            "Exactamente o poco más de 500g",
            "Me doy cuenta de la enfermedad, pero lo atribuyo a la mala alimentación, clima u otro factor"
        };

        //Respuestas rdb1
        public static string[] answerrdb3 = {
            "Estas sensaciones las relato espontáneamente",
            "Pienso que tengo la culpa por algo",
            "Me gustaría estar muerto",
            "Tengo dificultad",
            "Tengo dificultad",
            "Tengo dificultad",
            "Pierdo el interés",
            "Se me dificulta hablar",
            "Juego con las manos, cabello, etc.",
            "Sí",
            "Moderada",
            "Tengo dificultad para comer a menos que me lo digan",
            "Pierdo mi energía o fatigilidad o tengo otro síntoma",
            "Muchos",
            "Sí, me preocupa",
            "Más de 1kg",
            "No me doy cuenta de que estoy enfermo/enferma"
        };

        //Respuestas rdb1
        public static string[] answerrdb4 = {
            "Sensaciones no comunicadas verbalmente (expresión facial, postura, voz, tendencia al llanto)",
            "Siento que mi malestar actual es un castigo",
            "Me quiero suicidar",
            "",
            "",
            "",
            "Le dedico menos tiempo y esfuerzo",
            "Tengo dificultades para expresarme",
            "No puedo quedarme quieto ni permanecer sentado/a",
            "Me preocupo por pequeñas cosas",
            "Severa",
            "",
            "",
            "",
            "Solicito ayuda",
            "",
            ""
        };

        //Respuestas rdb1
        public static string[] answerrdb5 = {
            "Lo expreso y demuestro",
            "Escucho voces acusatorias o de denuncia y/o experimento alucinaciones",
            "Me he intentado suicidar",
            "",
            "",
            "",
            "Dejo de hacer las actividades por mi malestar y me enfoco en hacer actividades pequeñas",
            "No me puedo expresar",
            "Retuerzo las manos, me muerdo las uñas, me tiro los cabellos, me muerdo los labios",
            "Expreso esas sensaciones o emociones",
            "Incapacitante",
            "",
            "",
            "",
            "",
            "",
            ""
        };

        //Botones
        public static String but_return = "Regresar";
        public static String but_calculate = "Calcular";

        //niveles de depresión
        public static String level1 = "No deprimido";
        public static String level2 = "Depresión ligera/menor";
        public static String level3 = "Depresión moderada";
        public static String level4 = "Depresión severa";
        public static String level5 = "Depresión muy severa";

        //Cadena con el nivel del usuario
        public static String estado;
    }
}