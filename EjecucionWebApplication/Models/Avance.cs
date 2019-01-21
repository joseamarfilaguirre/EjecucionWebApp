﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EjecucionWebApplication.Models
{
    public class Avance
    {
        public int IdAvance { set; get; }
        public float PorcentajePrevisto { set; get; }
        public float PorcentajeReal { set; get; }
        public float PorcentajeAtraso { set; get; }
        public int IdObra { set; get; }
        public DateTime Fechaavance { set; get; }
    }

}