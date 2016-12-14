using System;
using System.Globalization;

namespace CloudCalc
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            result.Text = DoCalc(CalcCore.Add);
        }

        protected void btnSub_OnClick(object sender, EventArgs e)
        {
            result.Text = DoCalc(CalcCore.Sub);
        }

        protected void btnMult_OnClick(object sender, EventArgs e)
        {
            result.Text = DoCalc(CalcCore.Mult);
        }

        protected void btnDiv_OnClick(object sender, EventArgs e)
        {
            result.Text = DoCalc(CalcCore.Div);
        }

        private string DoCalc(Func<double, double, double> calcFunc)
        {
            var a = double.Parse(firstNumber.Text, CultureInfo.InvariantCulture);
            var b = double.Parse(secondNumber.Text, CultureInfo.InvariantCulture);
            return calcFunc(a, b).ToString(CultureInfo.InvariantCulture);
        }
    }
}