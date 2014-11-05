<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/18/14
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>.:: Search ::.</title>
</head>
<body>

<div class="container">

    <g:render template="/menuTemplate" />
    <label for="inputPassword3" class="col-xs-3">Selecting item specifics :</label>
    %{--controller="search" action="search"--}%

    <script type="text/javascript">

        $(document).ready(function() {
            $(".btn").click(function(){
                var selectedType = $("#selectedTypeId").val();
                var selectedItem = $("#selectedItemId").val();
                //alert(a +"," +b);
                /*$.post(
                    "%{--${createLink(controller:'search',action:'result')}--}%",
                    {selectedItem:selectedItem,selectedType:selectedType},
                    function(data) {
                        //dataSource(data)
                        $('#resultTable').html(data);
                    }
                );*/
                $.ajax({
                    type:"POST",
                    cache:false,
                    url:"${createLink(controller:'search',action:'result')}",
                    data:{ selectedItem : selectedItem, selectedType : selectedType },    // multiple data sent using ajax
                    success: function (data) {
                        $('#resultTable').html(data);
                    }
                });
                return false;
            });
        });




    </script>

    <form id="formSubmit">
        <div class="col-xs-3">
            <select class="form-control" id="selectedTypeId" name="selectedType">
                <option value="">-- Select the item --</option>
                <option value="name">Name</option>
                <option value="regId">Reg Id</option>
                <option value="email">Email</option>
                <option value="department">Department</option>
            </select>
        </div>
        <input type="text" id="selectedItemId" name="selectedItem" class="input-medium search-query">
        <input type="button" class="btn" value="Submit" name="submit" />

    </form>

    <!-- table -->
    <div class="panel panel-default" id="resultTable"></div>


</body>
</html>