
package com.emergentes;

/**
 *
 * @author Josué
 */
public class var {
    
    private String tarea;
    
     public var(String tarea) {
        this.tarea = tarea;
    }
    
    public String getTarea(){
        return this.tarea;
    }
  
    public void setTarea(String tarea) {
        this.tarea = tarea;
    }
    @Override
    public String toString() {
        return "var{" + "tarea=" + tarea + '}';
    }
}

