﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppEjecucion.Models.ViewModels
{
    public class EmpresaViewModel : BaseModelo
    {
        public List<EmpresaConstructora> Empresas { get; set; }
    }

}