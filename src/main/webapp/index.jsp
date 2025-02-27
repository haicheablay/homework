<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shool Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;

        }
        .container{
            margin-top: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 2px 2px 5px gray;
            border-radius: 10px;
        }
        .button input:hover{
            background-color: gray;
        }
    </style>
</head>
<body>
    <div class="container bg-light w-50 h-50">
            <form class="w-75 h-75 " action="SchoolFormServlet" method="post" onsubmit="return validateForm()">
                <h1 class="text-warning  d-flex justify-content-center align-items-center mt-3">School Form<h2>
                <div class="fs-5 mt-3 w-100 h-100" >
                    <label for="">Email:</label>
                    <input type="email"  class="form-control" name="email" aria-label="Sizing example input" placeholder="email" aria-describedby="inputGroup-sizing-sm">
                </div>
                <div  class="fs-5 mt-3">
                    <label for="">Password:</label>
                    <input type="password" class="form-control" name="password" placeholder="password" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                </div >

                <div class="fs-5 mt-3">
                    <label for="">Birthay:</label>
                    <input type="data" class="form-control" name="birthday" placeholder="birthay" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                </div>


                <div class="fs-5 mt-3">
                    <label for="">College:</label>
                    <input type="text" class="form-control" name="college"  placeholder="college" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                </div>
                <div class="row ">
                    <label class="fs-5 mt-3">New Student:
                            <input  type="radio" name="new_student" value="yes" required>Yes
                            <input type="radio" name="new_student" value="no"> No
                    </label><br>
                </div>
                 <div class="mt-3">
                    <label><span class="fs-5 mt-3">Major:</span>
                        <select class="fs-5" name="major" required>
                            <option value="">Select Major</option>
                            <option >Computer Science</option>
                             <option >Software Development</option>
                            <option >Mathematics</option>
                        </select>
                    </label><br>
                 </div>
                <label class="fs-5 mt-3">Favorite Color: <input type="color" name="color" required></label><br>
                <label class="fs-5"><input type="checkbox" name="terms" required> I agree to terms</label><br>
                <div class="button">
                    <input class="fs-5  bg-primary text-light mt-3 p-2 rounded-2 border-0" type="submit" value="Submit Form">
                    <br><br>
                </div>
            </form>
            <script>
            function validateForm() {
                const terms = document.querySelector('input[name="terms"]');
                if (!terms.checked) {
                    alert("You must agree to the terms.");
                    return false;
                }
                return true;
            }
            </script>
        <div>

</body>
</html>