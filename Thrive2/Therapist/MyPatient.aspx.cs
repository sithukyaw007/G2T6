using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thrive2.Therapist
{
    public partial class MyPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                // Initialize a DataTable
                DataTable myDataTable = new DataTable();

                // Initialize DataColumn
                DataColumn myDataColumn = new DataColumn();

                // Add First DataColumn
                // AllowDBNull property
                myDataColumn.AllowDBNull = false;

                // set AutoIncrement property to true
                myDataColumn.AutoIncrement = true;

                // set AutoIncrementSeed property equal to 1
                myDataColumn.AutoIncrementSeed = 1;

                // set AutoIncrementStep property equal to 1
                myDataColumn.AutoIncrementStep = 1;

                // set ColumnName property to specify the column name
                myDataColumn.ColumnName = "No.";

                // set DataType property of the column as Integer
                myDataColumn.DataType = System.Type.GetType("System.Int32");

                // set Unique property of DataColumn to true to allow unqiue value for this column in each row
                myDataColumn.Unique = true;

                // Add and Create a first DataColumn
                myDataTable.Columns.Add(myDataColumn);


                // Add second DataColumn
                // initialize a new instance of DataColumn to add another column with different properties.
                myDataColumn = new DataColumn();
                myDataColumn.ColumnName = "Name";

                // set DataType property of the column as String
                myDataColumn.DataType = System.Type.GetType("System.String");

                // Add and Create a Second DataColumn
                myDataTable.Columns.Add(myDataColumn);

                // initialize a new instance of DataColumn to add another column with different properties.
                myDataColumn = new DataColumn();
                myDataColumn.ColumnName = "Assignment";

                // set DataType property of the column as String
                myDataColumn.DataType = System.Type.GetType("System.String");

                // Add and Create a Third DataColumn
                myDataTable.Columns.Add(myDataColumn);

                // initialize a new instance of DataColumn to add another column with different properties.
                myDataColumn = new DataColumn();
                myDataColumn.ColumnName = "Score";

                // set DataType property of the column as String
                myDataColumn.DataType = System.Type.GetType("System.String");

                // Add and Create a Fourth DataColumn
                myDataTable.Columns.Add(myDataColumn);

                // initialize a new instance of DataColumn to add another column with different properties.
                myDataColumn = new DataColumn();
                myDataColumn.ColumnName = "Status";

                // set DataType property of the column as String
                myDataColumn.DataType = System.Type.GetType("System.String");

                // Add and Create a Third DataColumn
                myDataTable.Columns.Add(myDataColumn);

                // create a new row using NewRow() function of DataTable.
                // dataRow object will inherit the schema of myDataTable to create a new row
                DataRow dataRow = myDataTable.NewRow();

                dataRow["Name"] = "Andrew";
                dataRow["Assignment"] = "1.1";
                dataRow["Score"] = "2";
                dataRow["Status"] = "Reviewed";

                // add new data row to the data table.
                myDataTable.Rows.Add(dataRow);

                DataRow dataRow2 = myDataTable.NewRow();

                dataRow2["Name"] = "Brian";
                dataRow2["Assignment"] = "2";
                dataRow2["Score"] = "-";
                dataRow2["Status"] = "Overdue";

                // add new data row to the data table.
                myDataTable.Rows.Add(dataRow2);

                DataRow dataRow3 = myDataTable.NewRow();

                dataRow3["Name"] = "May";
                dataRow3["Assignment"] = "1.1";
                dataRow3["Score"] = "1";
                dataRow3["Status"] = "Reviewed";

                // add new data row to the data table.
                myDataTable.Rows.Add(dataRow3);

                DataRow dataRow4 = myDataTable.NewRow();

                dataRow4["Name"] = "Melvin";
                dataRow4["Assignment"] = "1";
                dataRow4["Score"] = "2";
                dataRow4["Status"] = "Reviewed";

                // add new data row to the data table.
                myDataTable.Rows.Add(dataRow4);

                DataRow dataRow5 = myDataTable.NewRow();

                dataRow5["Name"] = "Oliver";
                dataRow5["Assignment"] = "2";
                dataRow5["Score"] = "3";
                dataRow5["Status"] = "Reviewed";

                // add new data row to the data table.
                myDataTable.Rows.Add(dataRow5);

                DataRow dataRow6 = myDataTable.NewRow();

                dataRow6["Name"] = "Patricia";
                dataRow6["Assignment"] = "3";
                dataRow6["Score"] = "-";
                dataRow6["Status"] = "Overdue";

                // add new data row to the data table.
                myDataTable.Rows.Add(dataRow6);

                DataRow dataRow7 = myDataTable.NewRow();

                dataRow7["Name"] = "Rachel";
                dataRow7["Assignment"] = "2";
                dataRow7["Score"] = "-";
                dataRow7["Status"] = "Submitted";

                // add new data row to the data table.
                myDataTable.Rows.Add(dataRow7);

                GridView1.DataSource = myDataTable;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    DataRowView test = (System.Data.DataRowView)e.Row.DataItem;
                    string overdue = test.Row[4].ToString();

                    if (overdue == "Overdue")
                    {
                        e.Row.BackColor = System.Drawing.Color.Red;
                        e.Row.ForeColor = System.Drawing.Color.White;
                    }

                    e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                    e.Row.Attributes["style"] = "cursor:pointer";
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String cellText = this.GridView1.SelectedRow.Cells[1].Text;
            String assignment = this.GridView1.SelectedRow.Cells[2].Text;
            string overdue = this.GridView1.SelectedRow.Cells[4].Text;
            if (overdue.Equals("Overdue"))
            {
                overdue = "o";
            }
            else
            {
                overdue = "n";
            }
            Response.Redirect("MyPatientAssignment.aspx?s=" + overdue + "&pname=" + cellText + "&assignment=" + assignment);
        }
    }
}