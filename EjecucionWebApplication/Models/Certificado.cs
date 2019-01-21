using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public class Certificado
    {
        public int IdCertificado { set; get;}
        public string CertificadoDesc { set; get; }
        public int IdTipoCertificado { set; get; }
    }
}