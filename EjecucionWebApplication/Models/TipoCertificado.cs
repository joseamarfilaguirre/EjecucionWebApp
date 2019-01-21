using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public class TipoCertificado
    {
        public int IdTipoCertificado { set; get; }
        public string TipoCertificadoDesc { set; get; }
        public int IdTipoCertificadoCat { set; get; }
    }
}