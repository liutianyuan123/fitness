package servlet.GestionClient;

import db.dbClient;
import model.Utilisateur;

import java.util.ArrayList;

public class CtrlChangeStatu {
    ArrayList<Utilisateur> list;


    public CtrlChangeStatu(String condition){
        if (condition==null){
            list=getUsers("STATUTU<>'admin'");
        }else if(condition.equals("valide")){
            list=getUsers("STATUTU='valide'");
        }else if (condition.equals("en attente")){
            list=getUsers("STATUTU='en attente'");
        }else if (condition.equals("valider")){
            list=getUsers("STATUTU='en attente' or STATUTU='prospect'");
        }else if (condition.equals("prospect")||condition.equals("passerAttente")){
            list=getUsers("STATUTU='prospect'");
        }
    }


    private ArrayList<Utilisateur> getUsers(String condition){
        System.out.println(condition);
        return  new dbClient().getClients(condition);
    }

    public  ArrayList<Utilisateur> getList(){
        return list;
    }
}
