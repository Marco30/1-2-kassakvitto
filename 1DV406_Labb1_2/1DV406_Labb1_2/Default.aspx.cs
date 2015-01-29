using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1DV406_Labb1_2// Marco villegas
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var kvitto = new Model.Receipt(double.Parse(TextBox1.Text));
                kvitoPanel.Visible = true;

                TotalLabel.Text = String.Format("{0:c}", kvitto.Subtotal);

                DiscountLabel.Text = String.Format("{0:p0}", kvitto.DiscountRate);

                SavingLabel.Text = String.Format("{0:c}", kvitto.MoneyOff);

                ToPayLabel.Text = String.Format("{0:c}", kvitto.Total);
            }
        }

    }
}