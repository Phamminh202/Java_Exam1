<%@ page import="com.t2010a.t2010a_again.entity.Customer" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: PhạmMinh
  Date: 13/05/2022
  Time: 4:58 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Customer> customerList = (List<Customer>) request.getAttribute("ListCustomers");
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
    <!-- Main Sidebar Container -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Create customer</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Phone</th>
                                        <th>Image</th>
                                        <th>Birthday</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                        <%for (Customer cs : customerList) { %>
                                        <tr>
                                            <td><%=cs.getId()%></td>
                                            <td><%=cs.getName()%></td>
                                            <td><%=cs.getPhone()%></td>
                                            <td><%=cs.getImage()%></td>
                                            <td><%=cs.getDob()%></td>
                                            <td><a href="/admin/customers/detail?id=<%=cs.getId()%>">Detail</a>&nbsp;&nbsp;
                                                <a href="/admin/customers/edit?id=<%=cs.getId()%>">Edit</a>&nbsp;&nbsp;
                                                <a href="/admin/customers/delete?id=<%=cs.getId()%>" onclick="return confirm('Are you sure?')">Delete</a></td>
                                        </tr>
                                        <%}%>

                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Phone</th>
                                        <th>Image</th>
                                        <th>Birthday</th>
                                        <th>Action</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
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
