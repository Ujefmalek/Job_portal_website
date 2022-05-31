<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="validate_data.js"></script>
    </head>
    <body>
        <%@include file="home_header.html" %>
        <div class="c1">
            <div class="c2">
                <div class="c3">
                    <form class="row g-3 c3" action="signup_handler" method="post" onsubmit="return check()">
                        <h2 align="center">Sign-Up</h2><hr/>
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
                        <div class="col-12">
                            <label for="inputAddress2" class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" id="address" placeholder="Apartment, studio, or floor">
                        </div>
                        <div class="col-md-6">
                            <label for="inputCity" class="form-label">City</label>
                            <input type="text" class="form-control" id="city" name="city"> 
                        </div>
                        <div class="col-md-4">
                            <label for="inputZip" class="form-label">Zip</label>
                            <input type="text" class="form-control" id="zip" name="zip">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Sign in</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
