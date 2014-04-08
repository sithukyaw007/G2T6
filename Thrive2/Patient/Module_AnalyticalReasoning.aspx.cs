using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thrive2
{
    public partial class Module_AnalyticalReasoning : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListItem l = new ListItem("1", "1", true);
            List<ListItem> items = new List<ListItem>();
            items.Add(new ListItem("1", "Item 1"));
            items.Add(new ListItem("2", "Item 2"));
            items.Add(new ListItem("3", "Item 3"));
            items.Sort(delegate(ListItem item1, ListItem item2) { return item1.Text.CompareTo(item2.Text); });
            DropDownList1.Items.AddRange(items.ToArray());
            DropDownList2.Items.AddRange(items.ToArray());
            DropDownList3.Items.AddRange(items.ToArray());
        }
    }
}