using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;

namespace CareDAX.Backend
{
    public class IA
    {
        public String tokenizar(String oracion)
        {

            return oracion;
        }

        public String normalizar(String oracion)
        {
            String normalizar = oracion.Normalize(NormalizationForm.FormD);
            StringBuilder stringBuilder = new StringBuilder();
            foreach (char c in normalizar) if (CharUnicodeInfo.GetUnicodeCategory(c) != UnicodeCategory.NonSpacingMark) stringBuilder.Append(c);
            oracion = stringBuilder.ToString().ToLower();
            return oracion;
        }
    }
}