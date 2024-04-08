using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareDAX.Backend.Strings
{
    public class StringsEstres
    {
        //Descripcion
        public static String description = "Este es el test de 'Escala de estrés percibido-10'. Este test determinará tu nivel de estrés. El test cuenta con un formulario de preguntas y opciones definidas, en las cuales cada opción contará con cierto valor para su clasificación. Lo que debes hacer es seleccionar la opción con la que mejor te identifiques y, al finalizar, dar clic en el botón de 'Calcular'. Te pedimos que seas sincero para que el test tenga una mejor precisión ya que cuando se calculen los datos no podras cambiar ninguna respuesta, el resultado se mostrara tu página principal.";

        //Columnas
        public static String col1="Durante el último mes";
        public static String col2 = "Nunca";
        public static String col3 = "Casi nunca";
        public static String col4 = "De vez en cuando";
        public static String col5 = "A menudo";
        public static String col6 = "Muy a menudo";

        //Preguntas
        public static string[] valoresCambiantes = { 
            "1. ¿Con qué frecuencia ha estado afectado por algo que ha ocurrido inesperadamente?",
            "2. ¿Con qué frecuencia se ha sentido incapaz de controlar las cosas importantes en su vida?",
            "3. ¿Con qué frecuencia se ha sentido nervioso o estresado?",
            "4. ¿Con qué frecuencia ha estado seguro sobre su capacidad para manejar sus problemas personales?",
            "5. ¿Con qué frecuencia ha sentido que las cosas le van bien?",
            "6. ¿Con qué frecuencia ha sentido que no podia afrontar todas las cosas que tenía que hacer?",
            "7. ¿Con qué frecuencia ha podido controlar las dificultades de su vida?",
            "8. ¿Con qué frecuencia se ha sentido que tenía todo bajo control?",
            "9. ¿Con qué frecuencia ha estado enfadado porque las cosas que le han ocurrido estaban fuera de su control?",
            "10. ¿Con qué frecuencia ha sentido que las dificultades se acumulan tanto que no puede superarlas?"
        };

        //Botones
        public static String but_return = "Regresar";
        public static String but_calculate = "Calcular";

        //niveles de estres
        public static String level1 = "Poco o nada de estrés";
        public static String level2 = "Estrés moderado";
        public static String level3 = "Estrés elevado";

        //Cadena con el nivel del usuario
        public static String estado;
    }
}