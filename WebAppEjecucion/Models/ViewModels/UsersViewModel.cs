using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppEjecucion.Models.ViewModels
{
    public class UsersViewModel : BaseModelo
    {
        public List<AspNetUsers> Users { get; set; }
    }
}
