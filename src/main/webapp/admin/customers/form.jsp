<%@ page import="com.t2010a.t2010a_again.entity.Customer" %><%--
  Created by IntelliJ IDEA.
  User: PhạmMinh
  Date: 12/05/2022
  Time: 5:30 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Customer customer = (Customer) request.getAttribute("customer");
    int action = (int) request.getAttribute("action");
    String url = "/admin/customers/create";
    if(action == 2){
        url = "/admin/customers/edit";
    }
%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../includes/head.jsp"></jsp:include>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- Navbar -->
    <jsp:include page="../includes/navbar.jsp"></jsp:include>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <jsp:include page="../includes/aside.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-8">
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Create Customer</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form action="<%=url%>" method="post">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="id">Id</label>
                                        <input type="text" class="form-control" id="id" name="id" placeholder="Enter id" value="<%=customer.getId()%>" <%=action == 2 ? "readonly":""%>>
                                    </div>
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter name"  value="<%=customer.getName()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="phone">Phone</label>
                                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone" value="<%=customer.getPhone()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="image">Image</label>
                                        <input type="text" class="form-control" id="image" name="image" placeholder="Enter image" value="<%=customer.getImage()%>">
                                    </div>
                                    <!-- Date dd/mm/yyyy -->
                                    <div class="form-group">
                                        <label for="dob">Birthday</label>
                                        <div class="input-group">
                                            <input type="date" class="form-control" id="dob" name="dob"  value="<%=customer.getDobString()%>">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <!-- /.form group -->
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    </div>
                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <button type="reset" class="btn btn-default">Reset</button>
                                </div>
                            </form>
                        </div>
                        <!-- /.card -->

                    </div>
                    <!--/.col (left) -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <jsp:include page="../includes/footer.jsp"></jsp:include>
</div>
<!-- ./wrapper -->
<%--jQuery--%>
<jsp:include page="../includes/script.jsp"></jsp:include>

</body>
</html>

