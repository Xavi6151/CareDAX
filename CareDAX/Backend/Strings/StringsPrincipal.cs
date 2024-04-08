using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CareDAX.Backend.Strings
{
    public class StringsPrincipal
    {
        //Palabras de categorización de estrés
        public static String level_Est1 = "Poco o nada de estrés";
        public static String level_Est2 = "Estrés moderado";
        public static String level_Est3 = "Estrés elevado";

        //Palabras de categorización de ansiedad
        public static String level_Ans1 = "Ansiedad muy baja";
        public static String level_Ans2 = "Ansiedad moderada";
        public static String level_Ans3 = "Ansiedad severa";

        //Palabras de categorización de depresión
        public static String level_Dep1 = "No deprimido/deprimida";
        public static String level_Dep2 = "Depresión ligera/menor";
        public static String level_Dep3 = "Depresión moderada";
        public static String level_Dep4 = "Depresión severa";
        public static String level_Dep5 = "Depresión muy severa";

        //Palabras de apartados de navegación (Solo son para que no este vacio el web form)
        public static String Est = "Test de Estres";
        public static String Ans = "Test de Ansiedad";
        public static String Dep = "Test de Depresion";
        public static String DAXIA = "Hablar con DAXIA";
    }
}