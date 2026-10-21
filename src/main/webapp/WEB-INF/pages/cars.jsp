<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
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
           <tr>
               <td>B-123-ABC</td>
               <td>1</td>
               <td>Alex</td>
           </tr>
       </tbody>
   </table>
</t:pageTemplate>