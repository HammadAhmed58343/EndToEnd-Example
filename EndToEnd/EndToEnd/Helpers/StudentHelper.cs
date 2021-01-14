using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EndToEnd.Helpers
{
    public class StudentHelper
    {
        public void Insert(string name, string fname, string classname, string sect)
        {
            Std_Table stdtable = new Std_Table();
            stdtable.name = name;
            stdtable.fname = fname;
            stdtable.classname = classname;
            stdtable.sect = sect;

            var db = new IPTEntities();

            db.Std_Table.Add(stdtable);
            db.SaveChanges();
            db.Dispose();
        }
    }
}