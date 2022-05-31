<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job Provider</title>
        <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="validate_data.js"></script>
    </head>
    <body>
        <div class="c1">
            <div class="c2">
                <div class="c3">
                    <form class="row g-3 c3" action="jobp_handler" method="post" onsubmit="return check2()">
                        <h2 align="center">Job-Provider</h2><hr/>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="fn" name="fn">
                        </div>
                        <div class="col-md-6">
                            <label for="inputAddress" class="form-label">Password</label>
                            <input type="password" class="form-control" id="pass" name="pass">
                        </div>
                        <div class="col-md-6">
                            <label for="inputAddress" class="form-label">Confirm Password</label>
                            <input type="password" class="form-control" id="cpass" name="cpass">
                        </div>
                        <div class="col-md-6">
                            <label for="inputAddress2" class="form-label">Company Name</label>
                            <input type="text" class="form-control" name="cn" id="cn" placeholder="Google,facebook,apple...">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Company Website</label>
                            <input type="text" class="form-control" name="cw" id="cw" placeholder="www.abc.com..">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Business phone Number</label>
                            <input type="number" class="form-control" id="bpn" name="bpn">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Apply</button>
                        </div>
                    </form>
    </body>
</html>
