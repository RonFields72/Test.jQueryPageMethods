<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head>
  <title>Calling page methods with jQuery</title>
      <style type="text/css">
          #datetime-container {
            background-color: #F04124; 
            color: #fff;
            cursor: pointer;
            width: 300px;
            font-size: 1.1em;
                font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
          }

          #results-container {
                background-color: #000;
                color: #fff;
                width: 500px;
                font-size: 1.3em;
                height: 100px;
                text-align: center;
                font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
          }
      </style>
</head>
<body>
    <h2>This will use jQuery to call a method in the page code-behind...</h2>
    <div id="datetime-container">Click HERE to retrieve current date/time.</div>
    <br />
    <div id="results-container"></div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <script>
        $('#datetime-container').click(function () {
            $.ajax({
                type: "POST",
                url: "Default.aspx/GetDateTime",
                data: "{}",
                contentType: "application/json",
                dataType: "json",
                success: function(msg) {
                    // Replace the divs content with the method return value.
                    $("#results-container").text(msg.d);
                }
            });
        });
    </script>
</body>
</html>
