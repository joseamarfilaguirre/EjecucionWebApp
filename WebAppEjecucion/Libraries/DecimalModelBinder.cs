using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.Mvc;

namespace WebAppEjecucion.Libraries
{
    public class DecimalModelBinder : System.Web.Mvc.IModelBinder
    {
        public object BindModel(ControllerContext controllerContext, System.Web.Mvc.ModelBindingContext bindingContext)
        {
            var valueResult = bindingContext.ValueProvider
            .GetValue(bindingContext.ModelName);
            var modelState = new System.Web.Mvc.ModelState { Value = valueResult };
            Object actualValue = null;
            try
            {               
                actualValue = Convert.ToDouble(valueResult.AttemptedValue.Replace(".",","), CultureInfo.CurrentCulture);
            }
            catch (FormatException e)
            {
                modelState.Errors.Add(e);
            }

            bindingContext.ModelState.Add(bindingContext.ModelName, modelState);
            return actualValue;
        }
    }
}