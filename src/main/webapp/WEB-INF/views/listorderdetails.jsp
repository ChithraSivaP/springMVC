<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
 <div class="container">
  <div class="col-md-offset-1 col-md-10">
   <h2>CRM - Customer Relationship Manager</h2>
   <hr />
   <!-- <input type="button" value="Add Order"
    onclick="window.location.href='showForm2'; return false;"
    class="btn btn-primary" /> -->
    <br/><br/>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Order List</div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered">
      <tr>
       <th>Id</th>
       <th>Order Name</th>
       <th>Buyer Name</th>
       <th>Restaurent</th>
       <th>Location</th>
       <th>Date</th>
       <th>Price</th>
       <th>User Id</th>
       <!-- <th>Action</th> -->
      </tr>
      <!-- loop over and print our customers
      <c:forEach var="tempOrder" items="${orders}">
       <!-- construct an "update" link with customer id -->
       <!-- <c:url var="updateLink" value="/order/updateForm">
        <c:param name="Id" value="${temp.id}" />
       </c:url> -->
       <!-- construct an "delete" link with customer id -->
       <!-- <c:url var="deleteLink" value="/order/delete">
        <c:param name="Id" value="${temp.id}" />
       </c:url> --> 
       <tr>
        <td>${tempOrder.id}</td>
        <td>${tempOrder.ordername}</td>
        <td>${tempOrder.buyername}</td>
        <td>${tempOrder.res}</td>
        <td>${tempOrder.location}</td>
        <td>${tempOrder.date}</td>
        <td>${tempOrder.price}</td>
        <td>${tempOrder.cusid}</td>
        <td>
         <!-- display the update link <a href="${updateLink}">Update</a>
         | <a href="${deleteLink}"
         onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a> -->
        </td>
       </tr>
      </c:forEach>
     </table>
    </div>
   </div>
  </div>
 </div>
</body>
</html>