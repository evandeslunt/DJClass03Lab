
package model;

/**
 *
 * @author Liz Ife Van Deslunt 
 */
public class TriangleCalculatorService {

    

    public double getLegC(String a, String b){
        double c = 0.0;
        try {
            Double legA = new Double(a);
            Double legB = new Double(b);
            c = getLegC(legA, legB);
        } catch (Exception e){
            //leave c as 0.
        }
        
        return c;
    }
    
    /**
     * Returns the length of the third leg of the triangle, given lengths of 
     * legs a and b.
     * @param a - Length of first leg of triangle.
     * @param b - Length of second leg of triangle.
     * @return The length of the third leg of the triangle.
     */
    public double getLegC(double a, double b){
        return (a*a) + (b*b);
    }
}
