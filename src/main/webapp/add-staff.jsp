<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Website</title>
    <jsp:include page="./common/import.jsp"/>
    <link href="resources/css/common.css" rel="stylesheet">
    <script src="resources/js/common.js"></script>
</head>
<body>
<%--Header--%>
<jsp:include page="./common/header.jsp"/>

<div class="container">
    <!-- Pills navs -->
    <div class="row my-5">
        <section class="">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-start h-100">
                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                             class="img-fluid" alt="Sample image">
                    </div>
                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1 mt-md-4">
                        <h3 class="mb-4">Register</h3>

                        <p class="my-3 text-danger">${error}</p>

                        <form method="post" action="add-staff">
                            <div class="row mb-3 gx-2">
                                <div class="form-group required col-6">
                                    <label for="firstName" class="form-label">First name</label>
                                    <input name="firstName" class="form-control" id="firstName" required value="${account.firstName}">
                                </div>
                                <div class="form-group required col-6">
                                    <label for="lastName" class="form-label">Last name</label>
                                    <input name="lastName" class="form-control" id="lastName" required value="${account.lastName}">
                                </div>
                            </div>

                            <!-- Email input -->
                            <div class="form-group required mb-3">
                                <label class="form-label" for="email">Email</label>
                                <input name="email" type="email" id="email" class="form-control" required value="${account.email}" />
                            </div>

                            <div class="form-group required mb-3">
                                <label class="form-label">Gender</label>
                                <div class="d-flex">
                                    <div class="form-check me-4">
                                        <input class="form-check-input" type="radio" name="gender" id="male" value="MALE" ${account.gender=='MALE'?'checked': ''}>
                                        <label class="form-check-label" for="male">
                                            Male
                                        </label>
                                    </div>

                                    <div class="form-check me-5">
                                        <input class="form-check-input" type="radio" name="gender" id="female" value="FEMALE" ${account.gender=='FEMALE'?'checked': ''}>
                                        <label class="form-check-label" for="female">
                                            Female
                                        </label>
                                    </div>

                                    <div class="form-check me-5">
                                        <input class="form-check-input" type="radio" name="gender" id="other" value="OTHER" ${account.gender=='OTHER'?'checked': ''}>
                                        <label class="form-check-label" for="other">
                                            Other
                                        </label>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group required mb-3">
                                <label class="form-label">Role</label>
                                <div class="d-flex">
                                    <div class="form-check me-5">
                                        <input class="form-check-input" type="radio" name="role" id="staff" value="STAFF">
                                        <label class="form-check-label" for="staff">
                                            Staff
                                        </label>
                                    </div>
                                    <div class="form-check me-5">
                                        <input class="form-check-input" type="radio" name="role" id="doctor" value="DOCTOR">
                                        <label class="form-check-label" for="doctor">
                                            Doctor
                                        </label>
                                    </div>
                                </div>

                            </div>


                            <div class="form-group mb-3">
                                <label class="form-label" for="phoneNumber" >Phone Number</label>
                                <input name="phoneNumber" id="phoneNumber" value="${account.phoneNumber}" class="form-control"/>
                            </div>

                            <div class="form-group mb-3">
                                <label class="form-label" for="dob">Birthday</label>
                                <input name="dob" type="date" id="dob" class="form-control" value="${account.DOB}"/>
                            </div>

                            <div class="form-group mb-3">
                                <label class="form-label" for="address">Address</label>
                                <input name="address" id="address" class="form-control" value="${account.address}"/>
                            </div>

                            <!-- Password input -->
                            <div class="form-group required mb-3">
                                <label class="form-label" for="password">Password</label>
                                <input type="password" name="password" id="password" class="form-control" required value="${account.password}" />
                            </div>

                            <div class="form-group required mb-3">
                                <label class="form-label" for="confirmPassword">Confirm Password</label>
                                <input type="password" name="confirmPassword" id="confirmPassword" class="form-control"  value="${confirmPassword}" required/>
                            </div>

                            <div class="text-center text-lg-start mt-4 pt-2">
                                <button type="submit" class="btn btn-primary"
                                        style="padding-left: 2.5rem; padding-right: 2.5rem;">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<%--footer--%>
<jsp:include page="./common/footer.jsp"/>
</body>
</html>