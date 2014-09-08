
package model;

import java.util.Calendar;

/**
 *
 * @author Liz Ife Van Deslunt 
 */
public class WelcomeService {
    private Calendar currDate;
    private Calendar morningEndTime;
    private Calendar afternoonEndTime;
    
    private final String WELCOME_MORNING = "Good morning, ";
    private final String WELCOME_AFTERNOON = "Good afternoon, ";
    private final String WELCOME_EVENING = "Good evening, ";
    private final String WELCOME_ENDING = ". Welcome!";
    
    private enum TIME_OF_DAY { MORNING, AFTERNOON, EVENING };
   
    public WelcomeService(){
        setTimesOfDay();
    }
    
    public String getWelcomeMessage(String name){
        String greeting = "";
        
        TIME_OF_DAY timeOfDay = getTimeOfDay();
        
        if(timeOfDay == TIME_OF_DAY.MORNING){
            greeting = WELCOME_MORNING;
        } else if(timeOfDay == TIME_OF_DAY.AFTERNOON){
            greeting = WELCOME_AFTERNOON;
        } else {
            greeting = WELCOME_EVENING;
        }
        
        greeting += name + WELCOME_ENDING;
        
        return greeting;
    }
    
    private TIME_OF_DAY getTimeOfDay(){
        
        if(currDate.before(morningEndTime)){
            return TIME_OF_DAY.MORNING;
        } else if(currDate.before(afternoonEndTime)){
            return TIME_OF_DAY.AFTERNOON;
        } else {
            return TIME_OF_DAY.EVENING;
        }
        
    }
    
    
    private void setTimesOfDay(){
        currDate = Calendar.getInstance();
        morningEndTime = Calendar.getInstance();
        afternoonEndTime = Calendar.getInstance();
        
        morningEndTime.set(Calendar.HOUR, 10);
        morningEndTime.set(Calendar.MINUTE, 0);
        morningEndTime.set(Calendar.SECOND, 0);
        morningEndTime.set(Calendar.AM_PM, Calendar.AM);
        
        afternoonEndTime = Calendar.getInstance();
        afternoonEndTime.set(Calendar.HOUR, 5);
        afternoonEndTime.set(Calendar.MINUTE, 0);
        afternoonEndTime.set(Calendar.SECOND, 0);
        afternoonEndTime.set(Calendar.AM_PM, Calendar.PM);
    }
}
