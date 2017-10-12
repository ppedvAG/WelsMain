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
            var imgname = context.Request.QueryString["img"];
            Byte[] buffer;
            if (context.Cache[imgname] == null)
            {

                var img = new Bitmap(context.Server.MapPath("/image/" + imgname));
                var thumb = img.GetThumbnailImage(200, 150, null, IntPtr.Zero);
                img.Dispose();
                var stream = new MemoryStream();
                thumb.Save(stream, ImageFormat.Jpeg);
                
                buffer = stream.GetBuffer();
                stream.Close();
                stream.Dispose();
                context.Cache.Add(imgname, buffer, null, DateTime.MaxValue,
                    new TimeSpan(1, 0, 0),
                    System.Web.Caching.CacheItemPriority.Normal, null);
            }
            else
            {
                buffer = (Byte[]) context.Cache[imgname];

            }
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