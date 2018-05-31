package model;
// Generated 28 mars 2018 10:29:50 by Hibernate Tools 4.3.1


import java.util.HashMap;

/**
 * Programmetype generated by hbm2java
 */
public class Programmetype  implements java.io.Serializable {


    private Integer codept;
    private String libellept;
    private String descriptionpt;
    private HashMap<Integer,Seancetype> listSeanceType=new HashMap<Integer,Seancetype>();
    private HashMap<Integer,Seancebilantype> listSeanceBilanType=new HashMap<Integer,Seancebilantype>();
    /**
     * Constructeur
     */
    public Programmetype() {
    }

  public void addSeanceType(int i,Seancetype seancetype){
      listSeanceType.put(i,seancetype);
  }
    public void addSeanceBilanType(int i,Seancebilantype seanceBilanType){
        listSeanceBilanType.put(i,seanceBilanType);
    }

    public HashMap<Integer, Seancetype> getListSeanceType() {
        return listSeanceType;
    }

    public HashMap<Integer, Seancebilantype> getListSeanceBilanType() {
        return listSeanceBilanType;
    }

    public Programmetype(Integer codept, String libellept, String descriptionpt) {
       this.codept = codept;
       this.libellept = libellept;
       this.descriptionpt = descriptionpt;
    }
   
    public Integer getCodept() {
        return this.codept;
    }
    
    public void setCodept(Integer codept) {
        this.codept = codept;
    }
    public String getLibellept() {
        return this.libellept;
    }
    
    public void setLibellept(String libellept) {
        this.libellept = libellept;
    }
    public String getDescriptionpt() {
        return this.descriptionpt;
    }
    
    public void setDescriptionpt(String descriptionpt) {
        this.descriptionpt = descriptionpt;
    }




}

