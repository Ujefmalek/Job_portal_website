<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Filter</title>
        <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script>
            function hset()
            {
                document.getElementById("form1").style.display = "none";
            }
            function hset()
            {
                document.getElementById("form1").style.display = "block";
            }
        </script>
    </head>
    <body>
        <div class="c1">
            <div class="c2">
                <form class="row g-3 c3" id="form1">
                    <h1 align="center">Apply Filter</h1><hr/>
                    <div class="col-md-6">
                        <label class="form-label">Job Title</label>
                        <input type="text" class="form-control" id="jt" name="jt">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Min Salary</label>
                        <input type="Number" class="form-control" id="ms" name="ms">
                    </div>
                    <div class="col-md-6">
                    <button type="submit" class="btn btn-primary">Apply</button>
                    </div>
                </form>
                <div class="col-md-6">
                    <button type="submit" onsubmit="aset()" class="btn btn-primary">Display</button>
                </div>
                <div class="col-md-6">
                    <button type="submit" onsubmit="hset()" class="btn btn-primary">Hide</button>
                </div>
            </div>
        </div>
    </body>
</html>
