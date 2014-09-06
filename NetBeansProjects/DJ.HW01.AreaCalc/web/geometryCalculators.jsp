<!DOCTYPE html>
<!--
This webpage allows the user to  perform simple geometry calculations:
area of a rectangle, area of a circle, and pythagorean theorem.
-->
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <head>
        <title>Area Calculator</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <div id="head">
            <h1>Geometry Calculators</h1>
            <p>Distributed Java JSP/Servlet practice.</p>
            <p>Liz Ife Van Deslunt 9/2014.</p>
        </div>
    <div id="wrapper">
       <%! String divResultStart = "<div class=\"result\">"; 
           String divResultEnd = "</div>";
       %>
        <div class="block">
            <h2>Area of a Rectangle</h2>
            <p>Area of a rectangle is calculated with the following formula:<br>
                <code>Area = length &times; width</code> 
            </p>
            <form name="rectange" method="POST" action="RectangleCalculator">
                <div class="inputarea">
                    <label for="length">Length:</label><input type="text" id="length" name="length" /><br>
                </div>
                <div class="inputarea">
                    <label for="width">Width:</label><input type="text" id="width" name="width" /><br>
                </div>
                <input type="submit" id="sumbitRect" value="Calculate Area"/>
            </form>
            
            
            <%
                /*
                Object rectResult = request.getAttribute("rectangleArea");
                
                if(rectResult != null){
                    out.print(divResultStart 
                                + "Area: " + rectResult.toString() 
                                + divResultEnd);
                }
                */
            %>
            
            <c:if test="${rectangleArea != null}">
                <div class="result">
                ${rectangleLength} &times; ${rectangleWidth} = ${rectangleArea}
                </div>
            </c:if>
            </div>
            
        <div class="block">
            <h2>Area of Circle</h2>
            <p>Area of a circle is calculated with the following formula: <br>
                <code>Area = pi &times; radius&sup2;</code>
            </p>
            <form name="circle" method="POST" action="CircleCalculator">
                <div class="inputarea">
                    <label for="radius">Radius:</label><input type="text" id="radius" name="radius" /><br>
                </div>
                    <input type="submit" id="sumbitCirc" value="Calculate Area"/>
            </form>
            
            <%
                /*
                Object circleResult = request.getAttribute("circleArea");
                if(circleResult != null){
                    out.print(divResultStart 
                                + "Area: " + circleResult.toString() 
                                + divResultEnd);
                }
                        */
            %>
            
            <c:if test="${circleArea != null}">
                <div class="result">
                    &pi;&times;${radius}&sup2; = ${circleArea}
                </div>
            </c:if>
        </div> 
        
        <div class="block">
            <h2>Pythagorean Theorem</h2>
            <p>Given two legs of a right triangle, the length of the third leg can 
                be found using the Pythagorean Theorem:<br>
                <code>a&sup2; + b&sup2; = c&sup2;</code>
            </p>
            <form name="triangle" method="POST" action="TriangleCalculator">
                <div class="inputarea">
                    <label for="side1">Side 1:</label><input type="text" id="side1" name="side1" /><br>
                </div>
                <div class="inputarea">
                    <label for="side2">Side 2:</label><input type="text" id="side2" name="side2" /><br>
                </div>
                <input type="submit" id="sumbitTriangle" value="Find c"/>
            </form>
            
            <%
                /*
                Object triangleResult = request.getAttribute("sideC");
                if(triangleResult != null){
                    out.print(divResultStart 
                                + "c = " + triangleResult.toString() 
                                + divResultEnd);
                }
                        */
            %>
            <c:if test="${sideC != null}">
                <div class="result">
                    ${sideA}&sup2; + ${sideB}&sup2; = ${sideC}
                </div>
            </c:if>
        </div>
    </div>
    </body>
</html>
