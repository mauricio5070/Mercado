using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Merc.BLL;
using Merc.DAL.Interfaces;
using Merc.DAL.Methods;

namespace Mercado
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarDataGrid();
        }
        private void llenarDataGrid()
        {
            iProducto iproduct = new mProducto();
            List<Producto> list = iproduct.selectProduct();
            gvProducts.DataSource = list;
            gvProducts.DataBind();
        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                iProducto iproduct = new mProducto();
                Producto product = new Producto()
                {
                    Nombre = txtNombre.Text,
                    Precio = Convert.ToDecimal(txtPrecio.Text),
                    Marca = txtMarca.Text
                };

                iproduct.insertProduct(product);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Supermercado", "alert('Producto insertado')", true);

            }
            catch (Exception error)
            {
                Console.WriteLine(error.ToString());
            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // IS POST BACK
            //FALSE Primera carga de la pagina
            //TRUE Es una recarga de la apagina

            
                iProducto iproduct = new mProducto();
                Producto producto = new Producto()
                {
                    
                    Nombre = txtNombre.Text,
                    Precio = Convert.ToDecimal(txtPrecio.Text),
                    Marca = txtMarca.Text,
                    Imagen = null


                };
                iproduct.updateProduct(producto);
                llenarDataGrid();
              
           
            

            
        }

       

        public static int code;
        protected void gvProducts_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = gvProducts.Rows[rowIndex];
            code = Convert.ToInt32(row.Cells[2].Text);
            if (e.CommandName == "seleccionarProducto")
            {
                // HttpUtility.HtmlDecode(...) nos sirve para la decodificacion de caracteres en espaniol 
                String name = HttpUtility.HtmlDecode(row.Cells[3].Text);
                decimal price = Convert.ToDecimal(row.Cells[4].Text);
                String brand = HttpUtility.HtmlDecode(row.Cells[5].Text);

                iProducto iproduct = new mProducto();
                Producto producto = iproduct.searchProduct(code);
                txtNombre.Text = producto.Nombre;
                txtPrecio.Text = producto.Precio.ToString();
                txtMarca.Text = producto.Marca;

            }

                if(e.CommandName =="borrarProducto")
                {
                   
                    iProducto iproduct = new mProducto();
                    iproduct.deleteProduct(code);
                    llenarDataGrid();
                }
                

            
        }
    }
}