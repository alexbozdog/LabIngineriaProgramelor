<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Cars">
   <h1>Cars</h1>
   <a class="btn btn-primary btn-lg"
      href="${pageContext.request.contextPath}/AddCar">Add Car</a>
      <form method="POST" action="${pageContext.request.contextPath}/Cars">
          <button class="btn btn-danger" type="submit">Delete Cars</button>
   <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>

   <table class="table">
       <thead>
           <tr>
               <th>Select</th>
               <th>License plate</th>
               <th>Parking spot</th>
               <th>Owner</th>
               <th>Actions</th>

           </tr>
       </thead>
       <tbody>
           <c:forEach var="car" items="${cars}">
               <tr>
               <td>
                   <input type="checkbox" name="car_ids" value="${car.id}">
               </td>
                   <td>${car.licensePlate}</td>
                   <td>${car.parkingSpot}</td>
                   <td>${car.ownerName}</td>
                   <td>
                       <a class="btn btn-secondary"
                          href="${pageContext.request.contextPath}/EditCar?id=${car.id}">
                           Edit Car
                       </a>
                   </td>
               </tr>
           </c:forEach>
       </tbody>
   </table>
   </form>
</t:pageTemplate>