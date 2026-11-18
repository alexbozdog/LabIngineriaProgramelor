<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="Cars">
   <h1>Cars</h1>
   <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>

   <table class="table">
       <thead>
           <tr>
               <th>License plate</th>
               <th>Parking spot</th>
               <th>Owner</th>
           </tr>
       </thead>
       <tbody>
           <c:forEach var="car" items="${cars}">
               <tr>
                   <td>${car.licensePlate}</td>
                   <td>${car.parkingSpot}</td>
                   <td>${car.ownerName}</td>
               </tr>
           </c:forEach>
       </tbody>
   </table>
</t:pageTemplate>