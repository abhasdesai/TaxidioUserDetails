<%--
  Created by IntelliJ IDEA.
  User: abhas
  Date: 01/10/18
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Enter User Details</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />

    <script type="text/javascript">
        $(document).ready(function () {
            $('#interests').multiselect({
                nonSelectedText: 'Select Your Interest',
                enableFiltering: true,
                enableCaseInsensitiveFiltering: true,
                buttonWidth: '550px'
            });
        });
    </script>

    <style>
        h2 {text-align: center;}

        .form-btn {background-color: #f47455; color: #fff; border: 2px solid #999999; text-transform: uppercase;}

        .form-btn:hover {background-color: #fff; color: #000; border: 2px solid #f47455;}
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form name="myForm" role="form" method="POST" action="ReadInput">
                <h2>Input Form</h2>
                <hr class="colorgraph">

                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <label>First Name</label>
                            <input type="text" name="firstname" id="firstname" class="form-control input-lg" tabindex="1">
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <label>Last Name</label>
                            <input type="text" name="lastname" id="lastname" class="form-control input-lg" tabindex="2">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <label>Email Id</label>
                            <input type="text" name="emailid" id="emailid" class="form-control input-lg" tabindex="3">
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="form-group">
                            <label>Contact Number</label>
                            <input type="text" name="contact" id="contact" class="form-control input-lg" tabindex="4">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="dropdown">
                        <label>Interests</label>
                        <select name="interests" id="interests" class="form-control input-lg" multiple tabindex="5">
                            <option value="Archaeological">Archaeological</option>
                            <option value="Architecture">Architecture</option>
                            <option value="Beach / Islands">Beach / Islands</option>
                            <option value="Castles">Castles</option>
                            <option value="Child Attraction">Child Attraction</option>
                            <option value="Community Tourism">Community Tourism</option>
                            <option value="Festivals & Culture">Festivals & Culture</option>
                            <option value="Food & Nightlife">Food & Nightlife</option>
                            <option value="High Altitude">High Altitude</option>
                            <option value="History">History</option>
                            <option value="Museum">Museum</option>
                            <option value="Nature / Ecotourism">Nature / Ecotourism</option>
                            <option value="Relaxation & Spa">Relaxation & Spa</option>
                            <option value="Romance">Romance</option>
                            <option value="Shopping">Shopping</option>
                            <option value="Spirituality & Religion">Spirituality & Religion</option>
                            <option value="Sports & Adventure">Sports & Adventure</option>
                            <option value="Wildlife">Wildlife</option>
                            <option value="World Heritage / UNESCO">World Heritage / UNESCO</option>
                            <option value="estricted Accessibility">Restricted Accessibility</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-6">
                        <div class="form-group">
                            <label>Date of Visit</label>
                            <input type="text" name="visitdate" id="visitdate" class="form-control input-lg" tabindex="6">
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="form-group">
                            <label>Room No.</label>
                            <input type="text" name="roomno" id="roomno" class="form-control input-lg" tabindex="7">
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="form-group">
                            <label>Membership No.</label>
                            <input type="text" name="memberno" id="memberno" class="form-control input-lg" tabindex="8">
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row col-xs-12 col-md-12">
                    <div class="col-xs-12 col-sm-4 col-md-3 col-sm-offset-3 col-md-offset-3">
                        <button type="submit" name="submit" id="submit" class="btn form-btn btn-block btn-lg">Submit</button>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <button type="reset" name="reset" id="reset" class="btn form-btn btn-block btn-lg">Reset</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
