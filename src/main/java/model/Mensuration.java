package model;
// Generated 28 mars 2018 10:29:50 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Mensuration generated by hbm2java
 */
public class Mensuration  implements java.io.Serializable {


     private Integer codem;
     private int codeu;
     private Date datem;
     private Double taille;
     private Double poids;
     private Double hanches;
     private Double cuisses;
     private Double poitrine;
     private Double bras;

    public Mensuration() {
    }

	
    public Mensuration(int codeu, Date datem) {
        this.codeu = codeu;
        this.datem = datem;
    }

    public Mensuration(Double taille, Double poids, Double hanches, Double cuisses, Double poitrine, Double bras) {
        this.taille = taille;
        this.poids = poids;
        this.hanches = hanches;
        this.cuisses = cuisses;
        this.poitrine = poitrine;
        this.bras = bras;
    }
    public Mensuration(int codeu, Date datem, Double taille, Double poids, Double hanches, Double cuisses, Double poitrine, Double bras) {
       this.codeu = codeu;
       this.datem = datem;
       this.taille = taille;
       this.poids = poids;
       this.hanches = hanches;
       this.cuisses = cuisses;
       this.poitrine = poitrine;
       this.bras = bras;
    }
   
    public Integer getCodem() {
        return this.codem;
    }
    
    public void setCodem(Integer codem) {
        this.codem = codem;
    }
    public int getCodeu() {
        return this.codeu;
    }
    
    public void setCodeu(int codeu) {
        this.codeu = codeu;
    }
    public Date getDatem() {
        return this.datem;
    }
    
    public void setDatem(Date datem) {
        this.datem = datem;
    }
    public Double getTaille() {
        return this.taille;
    }
    
    public void setTaille(Double taille) {
        this.taille = taille;
    }
    public Double getPoids() {
        return this.poids;
    }
    
    public void setPoids(Double poids) {
        this.poids = poids;
    }
    public Double getHanches() {
        return this.hanches;
    }
    
    public void setHanches(Double hanches) {
        this.hanches = hanches;
    }
    public Double getCuisses() {
        return this.cuisses;
    }
    
    public void setCuisses(Double cuisses) {
        this.cuisses = cuisses;
    }
    public Double getPoitrine() {
        return this.poitrine;
    }
    
    public void setPoitrine(Double poitrine) {
        this.poitrine = poitrine;
    }
    public Double getBras() {
        return this.bras;
    }
    
    public void setBras(Double bras) {
        this.bras = bras;
    }




}

