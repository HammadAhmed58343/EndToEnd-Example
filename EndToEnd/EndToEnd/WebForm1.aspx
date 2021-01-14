<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EndToEnd.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <input type="text" id="namebox"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Father Name:
                    </td>
                    <td>
                        <input type="text" id="fnamebox"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Class:
                    </td>
                    <td>
                        <input type="text" id="classbox"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Section:
                    </td>
                    <td>
                        <input type="text" id="secbox"/>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <span onclick="addStudent()">Submit</span>                      
                    </td>
                </tr>
            </table>
        </div>
    </form>

    <script>
        function addStudent() {
            var name = $('#name').val();
            var fathername = $('#fname').val();
            var seatno = $('#classname').val();
            var section = $('#sect').val();

            var Student = new Object();
            Student.name;
            Student.fname;
            Student.classname;
            Student.section;

            var studentjax = JSON.stringify(Student);

            $.ajax({
                type: "Get",
                url: "WebForm1.aspx/AddStudent",
                contentType: "Application/JSON",
                data:
                {
                    Student: studentjax,
                },
                success: function (result) {
                    console.log(result);
                }
            });
        }
    </script>
</body>
</html>
