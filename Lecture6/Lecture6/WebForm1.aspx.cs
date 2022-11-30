using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Lecture6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false)
            {
                RdbCategory.Items.Add(new ListItem("Vegetable"));
                RdbCategory.Items.Add(new ListItem("Fruit"));

            }
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            GroceryTable.Visible = true;

            GroceryList.Text = "Grocery List";
            GroceryName.Text = "Grocery Name";
            Origin.Text = "Origin";
            Price.Text = "Price";
            FoodCategory.Text = "Food Category";

            BtnRegister.Text = TxtGroName.Text + " </br>";
            BtnRegister.Text += " from " +TxtGroOrgin.Text + " </br>" + "Price of € " + TxtPrice.Text;
            BtnRegister.Text += " </br>" + RdbCategory.SelectedItem.ToString();

        }
    }
}