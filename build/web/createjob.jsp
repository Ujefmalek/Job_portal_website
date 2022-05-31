<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>createjob</title>
        <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="header.html"%>
        <div class="c1">
            <div class="c2">
                <div class="c3">
                    <form class="row g-3 c3" action="createjob_handler.jsp" onsubmit="return check3()">
                        <h2 align="center">Create Job</h2><hr/>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Job Title</label>
                            <input type="text" class="form-control" id="jt" name="jt">
                        </div>
                        <div class="col-md-12">
                            <label class="form-label">Job Description</label>
                            <input type="text" class="form-control" id="jd" name="jd">
                        </div>
                        <div class="col-md-12">
                            <label for="inputAddress" class="form-label">Skills required</label>
                            <input type="Text" class="form-control" id="sr" name="sr">
                        </div>
                        <div class="col-md-6">
                            <label for="inputAddress" class="form-label">Last Date To Apply</label>
                            <input type="Date" class="form-control" id="date" name="date">
                        </div>
                        <div class="col-md-4">
                            <label for="inputZip" class="form-label">Salary</label>
                            <input type="text" class="form-control" id="salary" name="salary">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Create</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
