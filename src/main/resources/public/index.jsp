<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 29.09.2021
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>

        <!-- include libraries(jQuery, bootstrap) -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!-- include summernote css/js -->
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

        <script>

            function download_elem(el, filename) {
                var saveData = (function () {
                    var a = document.createElement("a");
                    document.body.appendChild(a);
                    a.style = "display: none";
                    return function (data, fileName) {
                        var blob = new Blob([data], {type: "octet/stream"}),
                            url = window.URL.createObjectURL(blob);
                        a.href = url;
                        a.download = fileName;
                        a.click();
                        window.URL.revokeObjectURL(url);
                    };
                }());

                var data = el.innerHTML,
                    fileName = filename;

                saveData(data, fileName);
            }

        </script>

    </head>
    <body>
    <header class="bg-dark">
        <div class="container ">
            <header class="d-flex justify-content-center py-3" >
                <ul class="nav nav-pills" >
                    <li class="nav-item " ><a href="main.html" class="nav-link" aria-current="page">Home</a></li>
                    <li class="nav-item " ><a href="#" class="nav-link active">Document</a></li>
                    <li class="nav-item " ><a href="#" class="nav-link">Blog</a></li>
                    <li class="nav-item " ><a href="#" class="nav-link">Pages</a></li>
                    <li class="nav-item " ><a href="contact.html" class="nav-link">Contact</a></li>
                </ul>
            </header>
        </div>
    </header>

    <nav class="navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand" href="#">File Editor</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsExample02" >
            <button type="button" class="btn btn-light" style="margin-right: 5px">Back</button>
            <button type="button" class="btn btn-light" style="margin-right: 5px">Load</button>
            <button type="button" class="btn btn-light" style="margin-right: 5px">Save</button>
            <button type="button" class="btn btn-light" style="margin-right: 5px" onclick="download_elem(document.getElementsByClassName('note-editable')[0], 'div.html');">Download</button>
        </div>

    </nav>
    <input class="form-control" placeholder="Title" required>
        <form method="post">
            <textarea id="summernote" name="editordata"></textarea>
        </form>
        <script>
            $(document).ready(function() {
                $('#summernote').summernote();
            });
        </script>
    </body>
</html>
