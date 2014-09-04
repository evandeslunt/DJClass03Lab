<!DOCTYPE html>
<!--
This webpage allows the user to  perform simple geometry calculations:
area of a rectangle, area of a circle, and pythagorean theorem.
-->
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
                <code>Area = length * width</code> 
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
                Object rectResult = request.getAttribute("rectangleArea");
                if(rectResult != null){
                    out.print(divResultStart 
                                + "Area: " + rectResult.toString() 
                                + divResultEnd);
                }
            %>
            </div>
            
        </div>
        
        <div class="block">
            <h2>Area of Circle</h2>
            <p>Area of a circle is calculated with the following formula: <br>
                <code>Area = 2 * pi * radius</code>
            </p>
            <form name="circle" method="POST" action="CircleCalculator">
                <div class="inputarea">
                    <label for="radius">Radius:</label><input type="text" id="radius" name="radius" /><br>
                </div>
                    <input type="submit" id="sumbitCirc" value="Calculate Area"/>
            </form>
            
            <%
                Object circleResult = request.getAttribute("circleArea");
                if(circleResult != null){
                    out.print(divResultStart 
                                + "Area: " + circleResult.toString() 
                                + divResultEnd);
                }
            %>
        </div> 
        
        <div class="block">
            <h2>Pythagorean Theorem</h2>
            <p>Given two legs of a right triangle, the length of the third leg can 
                be found using the Pythagorean Theorem:<br>
                <code>a^2 + b^2 = c^2</code>
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
                Object triangleResult = request.getAttribute("sideC");
                if(triangleResult != null){
                    out.print(divResultStart 
                                + "c = " + triangleResult.toString() 
                                + divResultEnd);
                }
            %>
        </div>
    </div>
    </body>
</html>
