using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lecture5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Regbutt_Click(object sender, EventArgs e)
        {

            LblComp.Text = "Dear " + TxtNm.Text + " " + TxtSnm.Text;
            LblComp.Text += ". Your application is accepted. </br>";
            LblComp.Text += TxtId.Text + " </br>" + TxtNm.Text + " ";
            LblComp.Text += TxtSnm.Text + " </br>" + TxtAge.Text + " </br>" + Txtmail.Text + " </br>" + TxtRemail.Text;
        }
    }
}