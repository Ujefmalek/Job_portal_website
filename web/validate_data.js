function check()
{
    var s1 = document.getElementById("email").value;
    var s2 = document.getElementById("fn").value;
    var s3 = document.getElementById("pass").value;
    var s4 = document.getElementById("cpass").value;
    var s5 = document.getElementById("city").value;
    var s6 = document.getElementById("zip").value;

    if (s1 == "" || s2 == "" || s3 == "" || s4 == "" || s5 == "" || s6 == "")
    {
        alert("Enter all data !");
        return false;
    }
    if (s3 == s4)
    {
        return true;
    } else
    {
        alert("Passwords are different !")
        return false;
    }
}
function check2()
{
    var s1 = document.getElementById("email").value;
    var s2 = document.getElementById("fn").value;
    var s3 = document.getElementById("pass").value;
    var s4 = document.getElementById("cpass").value;
    var s5 = document.getElementById("cn").value;
    var s6 = document.getElementById("bpn").value;
    if (s1 == "" || s2 == "" || s3 == "" || s4 == "" || s5 == "" || s6 == "")
    {
        alert("Enter all data !");
        return false;
    }
    if (s3 == s4)
    {
        return true;
    } else
    {
        alert("Passwords are different !");
        return false;
    }
}

function check3()
{
    var s1 = document.getElementById("jt").value;
    var s2 = document.getElementById("jd").value;
    var s3 = document.getElementById("sr").value;
    var s4 = document.getElementById("date").value;
    var s5 = document.getElementById("salary").value;
    if (s1 == "" || s2 == "" || s3 == "" || s4 == "" || s5 == "" || s6 == "")
    {
        alert("Enter all data !");
        return false;
    }
}
