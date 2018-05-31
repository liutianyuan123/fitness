package model;
// Generated 28 mars 2018 10:29:50 by Hibernate Tools 4.3.1



/**
 * Seancetype generated by hbm2java
 */
public class Seancetype implements java.io.Serializable {


     private Integer codest;
     private int codecat;
     private String categorieCat;
     private String libellest;
     private String descriptionst;
     private String echauffementst;

    public Seancetype() {
    }

    public String getCategorieCat() {
        return categorieCat;
    }

    public void setCategorieCat(String categorieCat) {
        this.categorieCat = categorieCat;
    }

    public Seancetype(int codecat) {
        this.codecat = codecat;
    }
    public Seancetype(int codest,int codecat, String libellest, String descriptionst,String echauffementst) {
       this.codest=codest;
       this.codecat = codecat;
       this.libellest = libellest;
       this.descriptionst = descriptionst;
       this.echauffementst=echauffementst;
    }
    public Seancetype(int codest, String libellest, String descriptionst,String echauffementst) {
        this.codest=codest;
        this.libellest = libellest;
        this.descriptionst = descriptionst;
        this.echauffementst=echauffementst;
    }
    public Integer getCodest() {
        return this.codest;
    }

    public String getEchauffementst() {
        return echauffementst;
    }

    public void setEchauffementst(String echauffementst) {
        this.echauffementst = echauffementst;
    }
    
    public void setCodest(Integer codest) {
        this.codest = codest;
    }
    public int getCodecat() {
        return this.codecat;
    }
    
    public void setCodecat(int codecat) {
        this.codecat = codecat;
    }
    public String getLibellest() {
        return this.libellest;
    }
    
    public void setLibellest(String libellest) {
        this.libellest = libellest;
    }
    public String getDescriptionst() {
        return this.descriptionst;
    }
    
    public void setDescriptionst(String descriptionst) {
        this.descriptionst = descriptionst;
    }




}

