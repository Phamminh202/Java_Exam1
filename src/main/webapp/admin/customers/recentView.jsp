<%@ page import="com.t2010a.t2010a_again.entity.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: PhạmMinh
  Date: 19/05/2022
  Time: 4:45 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  ArrayList<Customer> customer = (ArrayList<Customer>) request.getAttribute("listStudent");
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
                  </tr>
                  </thead>
                  <tbody>

                  <%for (Customer cs : customer) { %>
                  <tr>
                    <td><%=cs.getId()%></td>
                    <td><%=cs.getName()%></td>
                    <td><%=cs.getPhone()%></td>
                    <td><%=cs.getImage()%></td>
                    <td><%=cs.getDob()%></td>
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
