package model;
// Generated 28 mars 2018 10:29:50 by Hibernate Tools 4.3.1



/**
 * Categorieseance generated by hbm2java
 */
public class Categorieseance  implements java.io.Serializable {


     private Integer codecat;
     private String libellecat;

    public Categorieseance() {
    }

    
    public Categorieseance(Integer codecat,String libellecat) {
       this.codecat = codecat;
       this.libellecat = libellecat;
    }
    
    public Categorieseance(String libellecat) {
       this.libellecat = libellecat;
    }
   
    public Integer getCodecat() {
        return this.codecat;
    }
    
    public void setCodecat(Integer codecat) {
        this.codecat = codecat;
    }
    public String getLibellecat() {
        return this.libellecat;
    }
    
    public void setLibellecat(String libellecat) {
        this.libellecat = libellecat;
    }




}

