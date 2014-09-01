package model;

/**
 * Calculates the area of a rectangle for the Area Calculator webpage.
 * @author Liz Ife Van Deslunt 
 */
public class AreaCalculatorService {

    public double calcArea(double length, double width){
        double area = 0;
        
        if (length >= 0 && width >= 0){
            area = length * width;
        }
        
        return area;
    }
    
}
