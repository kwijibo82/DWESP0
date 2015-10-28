using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practica0
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //controla si la página se carga por primera vez o no
            if (!Page.IsPostBack)
            {
                this.Calendar.SelectedDate = this.Calendar.TodaysDate;
            }

            if ("Matí".Equals(this.RadioButtonListTorn.SelectedValue))
            {
                this.DropDownListCursMatriculat.Items.Clear();
                this.DropDownListCursMatriculat.Items.Add("ASIX1A");
                this.DropDownListCursMatriculat.Items.Add("ASIX2A");
                this.DropDownListCursMatriculat.Items.Add("DAM1A");
                this.DropDownListCursMatriculat.Items.Add("DAM2A");
                this.DropDownListCursMatriculat.Items.Add("DAW1A");
                this.DropDownListCursMatriculat.Items.Add("DAW2A");
            }
            else if ("Tarda".Equals(this.RadioButtonListTorn.SelectedValue))
            {
                this.DropDownListCursMatriculat.Items.Clear();
                this.DropDownListCursMatriculat.Items.Add("DAM1T");
                this.DropDownListCursMatriculat.Items.Add("DAM2T");
            }

            if ("Matí".Equals(this.RadioButtonListCurs.SelectedValue))
            {
                this.DropDownListCursCursNou.Items.Clear();
                this.DropDownListCursCursNou.Items.Add("ASIX1A");
                this.DropDownListCursCursNou.Items.Add("ASIX2A");
                this.DropDownListCursCursNou.Items.Add("DAM1A");
                this.DropDownListCursCursNou.Items.Add("DAM2A");
                this.DropDownListCursCursNou.Items.Add("DAW1A");
                this.DropDownListCursCursNou.Items.Add("DAW2A");
            }
            else if ("Tarda".Equals(this.RadioButtonListCurs.SelectedValue))
            {
                this.DropDownListCursCursNou.Items.Clear();
                this.DropDownListCursCursNou.Items.Add("DAM1T");
                this.DropDownListCursCursNou.Items.Add("DAM2T");
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListModuls.Items.Add("ASIX");
            DropDownListModuls.Items.Add("DAM");
            DropDownListModuls.Items.Add("DAW");
        }


        protected void RadioButtonListCurs_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ("Matí".Equals(this.RadioButtonListCurs.SelectedValue))
            {
                this.DropDownListCursCursNou.Items.Clear();
                this.DropDownListCursCursNou.Items.Add("ASIX1A");
                this.DropDownListCursCursNou.Items.Add("ASIX2A");
                this.DropDownListCursCursNou.Items.Add("DAM1A");
                this.DropDownListCursCursNou.Items.Add("DAM2A");
                this.DropDownListCursCursNou.Items.Add("DAW1A");
                this.DropDownListCursCursNou.Items.Add("DAW2A");
            }
            else if ("Tarda".Equals(this.RadioButtonListCurs.SelectedValue))
            {
                this.DropDownListCursCursNou.Items.Clear();
                this.DropDownListCursCursNou.Items.Add("DAM1T");
                this.DropDownListCursCursNou.Items.Add("DAM2T");
            }
        }

        protected void ButtonElimianrSeleccionats0_Click(object sender, EventArgs e)
        {
            StringBuilder strAfegir = new StringBuilder();

            strAfegir.Append("Data: " + this.Calendar.SelectedDate + ";");
            strAfegir.Append("Nom: " + this.TextBoxNom.Text + ";");
            strAfegir.Append("Cognom: " + this.TextBoxCognom.Text + ";");
            strAfegir.Append("Modul: " + this.DropDownListModuls.SelectedItem.Text);
            strAfegir.Append("UFs: " + this.getSelectedUFS());
            strAfegir.Append("Torn matriculat: " + this.getSelectedTorn(this.RadioButtonListTorn) + ";");
            strAfegir.Append("Curs matriculat: " + this.DropDownListCursMatriculat.SelectedItem.Text + ";");
            strAfegir.Append("Tutor del curs: " + this.DropDownListTutor.SelectedItem.Text + ";");
            strAfegir.Append("Professor del modul:" + this.DropDownListProfessor.SelectedItem.Text + ";");
            strAfegir.Append("Torn nou curs:" + this.getSelectedTorn(this.RadioButtonListCurs) + ";");
            strAfegir.Append("Nou curs: " + this.DropDownListCursCursNou.SelectedItem.Text + ";");
            strAfegir.Append("Tutor curs nou: " + this.DropDownListTutorCursNou.SelectedItem.Text + ";");
            strAfegir.Append("Nou professor: " + this.DropDownListProfessorCursNou.SelectedItem.Text);

            if (findString(strAfegir.ToString()))
            {
                MsgBox("Aquestes dades ja existeixen!", this.Page, this);
            }
            else
            {
                this.ListBoxResum.Items.Add(strAfegir.ToString());
            }
            this.TextBoxNom.Text = "";
            this.TextBoxCognom.Text = "";

        }

        /**
         *Busca la string con los datos del alumno y devuelve true si la encuentra
         * */
        public bool findString(string str)
        {
            bool resul = false;

            foreach (var item in ListBoxResum.Items)
            {
                if (str.Equals(item.ToString()))
                {
                    resul = true;
                }
            }
            return resul;
        }

        /**
         * Obtiene las UFs seleccionadas por el usuario en la
         * página y las concatena en un string que es devuelto
         * por el método
         * */
        public string getSelectedUFS()
        {
            StringBuilder selectedUfs = new StringBuilder();

            foreach (ListItem item in this.CheckBoxListUFs.Items)
            {
                if (item.Selected)
                {
                    selectedUfs.Append(item.Text);
                    selectedUfs.Append(";");
                }
            }
            return selectedUfs.ToString();
        }

        /**
         * Obtiene el turno seleccionado y lo devuelve como un string
         * */
        public string getSelectedTorn(RadioButtonList rbl)
        {
            StringBuilder selectedTorn = new StringBuilder();

            foreach (ListItem item in rbl.Items)
            {
                if (item.Selected)
                {
                    selectedTorn.Append(item.Text);
                }
            }
            return selectedTorn.ToString();
        }

	    /**
         *Muestra un mensaje al usuario.
         * */
        public void MsgBox(String ex, Page pg,Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" +
                ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        /**
         * Elimina los items seleccionados de la listbox
         * */
        protected void ButtonEliminarSeleccionats_Click(object sender, EventArgs e)
        {
            List<ListItem> itemsToRemove = new List<ListItem>();

            foreach (ListItem listItem in this.ListBoxResum.Items)
            {

                if (listItem.Selected)
                    itemsToRemove.Add(listItem);
            }

            foreach (ListItem listItem in itemsToRemove)
            {
                this.ListBoxResum.Items.Remove(listItem);
            }
        }

        /**
         * Elimina TODOS los items de la listbox
         * */
        protected void ButtonEliminarTots_Click(object sender, EventArgs e)
        {
            this.ListBoxResum.Items.Clear();
            
        }

        protected void TextBoxNom_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListCurs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonListTorn_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ("Matí".Equals(this.RadioButtonListTorn.SelectedValue))
            {
                this.DropDownListCursMatriculat.Items.Clear();
                this.DropDownListCursMatriculat.Items.Add("ASIX1A");
                this.DropDownListCursMatriculat.Items.Add("ASIX2A");
                this.DropDownListCursMatriculat.Items.Add("DAM1A");
                this.DropDownListCursMatriculat.Items.Add("DAM2A");
                this.DropDownListCursMatriculat.Items.Add("DAW1A");
                this.DropDownListCursMatriculat.Items.Add("DAW2A");
            }
            else if ("Tarda".Equals(this.RadioButtonListTorn.SelectedValue))
            {
                this.DropDownListCursMatriculat.Items.Clear();
                this.DropDownListCursMatriculat.Items.Add("DAM1T");
                this.DropDownListCursMatriculat.Items.Add("DAM2T");
            }
        }


       
    }
}