package model;
// Generated 28 mars 2018 10:29:50 by Hibernate Tools 4.3.1



/**
 * ComprendretypeId generated by hbm2java
 */
public class ComprendretypeId  implements java.io.Serializable {


     private int codept;
     private int codest;

    public ComprendretypeId() {
    }

    public ComprendretypeId(int codept, int codest) {
       this.codept = codept;
       this.codest = codest;
    }
   
    public int getCodept() {
        return this.codept;
    }
    
    public void setCodept(int codept) {
        this.codept = codept;
    }
    public int getCodest() {
        return this.codest;
    }
    
    public void setCodest(int codest) {
        this.codest = codest;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof ComprendretypeId) ) return false;
		 ComprendretypeId castOther = ( ComprendretypeId ) other; 
         
		 return (this.getCodept()==castOther.getCodept())
 && (this.getCodest()==castOther.getCodest());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getCodept();
         result = 37 * result + this.getCodest();
         return result;
   }   


}

