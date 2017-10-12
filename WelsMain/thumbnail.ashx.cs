using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;

namespace WelsMain
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für thumbnail
    /// </summary>
    public class thumbnail : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var imgname= context.Request.QueryString["img"];
            var img = new Bitmap(context.Server.MapPath("/image/" + imgname));
           var thumb= img.GetThumbnailImage(200, 150,null,IntPtr.Zero);
            var stream = new MemoryStream();
            thumb.Save(stream, ImageFormat.Jpeg);
            var buffer = stream.GetBuffer();
           context.Response.ContentType = "image/jpg";
            context.Response.OutputStream.Write(buffer, 0, buffer.Length);
            
         
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}