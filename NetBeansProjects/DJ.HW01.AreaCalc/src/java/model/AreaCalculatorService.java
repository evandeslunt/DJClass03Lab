package model;

/**
 * Calculates the area of a rectangle for the Area Calculator webpage.
 * @author Liz Ife Van Deslunt 
 */
public class AreaCalculatorService {

    public double calcArea(String length1, String length2){
        double length = 0.0;
        double width = 0.0;
        
        try{
        length = new Double(length1);
        width = new Double(length2);
        } catch(Exception e){
          //just leave the invalid values.
        }
        
        double area = 0;
        
        if (length >= 0 && width >= 0){
            area = length * width;
        }
        
        return area;
    }
    
}
