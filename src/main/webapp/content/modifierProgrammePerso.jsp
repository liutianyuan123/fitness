<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="db.dbProgram" %>
<%@ page import="model.Programmetype" %>
<%@ page import="model.Programmeperso" %>
<%@ page import="model.Seancetype" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="servlet.Program.ctrlProgram" %>
<%@ page import="java.util.EnumMap" %>
<%@ page import="model.Seanceperso" %>
<%@ page import="db.dbProgramPerso" %>
<% String codep = request.getParameter("codep");
    String type=request.getParameter("type");
    String codeUser=request.getParameter("codeUser");
    dbProgram db=new dbProgram();
    Programmeperso p = db.getProgrammPerson(codep);

%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Affichage programme <%=codep%>
    </title>
    <%@ include file="/content/templete/libHead.jsp" %>
    <link href="/css/lib/sweetalert/sweetalert.css" rel="stylesheet">
     
</head>

<body class="fix-header fix-sidebar">
<!-- Preloader - style you can find in spinners.css -->
<div class="preloader">
    <svg class="circular" viewBox="25 25 50 50">
        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/>
    </svg>
</div>
<!-- Main wrapper  -->
<div id="main-wrapper">
    <!-- header header  -->
    <%@ include file="/content/templete/header.jsp" %>
    <!--Left slider-->
    <%@ include file="/content/templete/menu.jsp" %>
    <!-- Page wrapper  -->
    <div class="page-wrapper">
        <!-- Bread crumb -->
        <div class="row page-titles">
            <div class="col-md-5 align-self-center">
                <h3 class="text-primary">Modification d'un programme</h3></div>
        </div>
        <!-- Container fluid  -->
        <div class="container-fluid" id="mainPage">
            <!-- Start Page Content -->
            <div class='row'>


                <!-- Commmencer ici -->
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-title">
                            <%
                                if(type.equals("createPerso")){
                                    out.print("<h2>Personaliser le programme :"+p.getLibellepp()+"</h2>");
                                }else if(type.equals("modifyPerso")){
                                    out.print(" <h2>Modification du programme personalisé:"+p.getLibellepp()+"</h2>");
                                }else if(type.equals("voirPerso")){
                                    out.print(" <h2>"+p.getLibellepp()+"</h2>");
                                }

                            %>
                        </div>
                        <div class="card-body">
                            <div class="card-content">
                                <div class="basic-form">
                                    <div class="form-group">
                                        <label>Nom du programme</label>
                                        <input type="string" class="form-control" id="nameProgram"
                                               value="<%=p.getLibellepp()%> " <%=type.equals("voirType")||type.equals("voirPerso")?"readonly":""%>>
                                    </div>
                                    <div class="form-group">
                                        <label>Description du programme</label>
                                        <input type="string" class="form-control" id="descriptionProgram"
                                               value="<%=p.getDescriptionpp()%>"  <%=type.equals("voirType")||type.equals("voirPerso")?"readonly":""%>>
                                    </div>
                                </div>
                                <%--List séance à ajouter--%>
                                    <h2 style="margin-top: 30px"><%=type.equals("voirType")||type.equals("voirPerso")?"Les ":"Modifier les"%> profils</h2>
                                <jsp:include page="templete/listProfil.jsp" flush="true">
                                    <jsp:param name="codePP" value="<%=codep%>"/>
                                    <jsp:param name="type" value="<%=type%>"/>
                                    <jsp:param name="codeP" value="<%=p.getCodept()%>"/>
                                </jsp:include>
                                    <h2 style="margin-top: 30px"><%=type.equals("voirType")||type.equals("voirPerso")?"Les ":"Modifier les"%> séances et bilans</h2>
                                <%
                                    if(!type.equals("voirType")&&!type.equals("voirPerso")){
                                        out.print(" <button class=\"btn btn-warning col-lg-4 col-sm-12\" onclick=\"switchListSeance()\">Afficher/Cacher la liste de\n" +
                                                "                                        séance à ajouter\n" +
                                                "                                    </button>");
                                    }
                                %>









                                <div class="table-responsive m-t-40" id="listSeance">
                                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0"
                                           width="100%">
                                        <thead>
                                        <tr>
                                        <tr>
                                            <th>Séance</th>
                                            <th>Opération</th>
                                            <th>Catégorie</th>
                                            <th>Description</th>
                                        </tr>
                                        </tr>
                                        </thead>
                                        <tbody id="listSessionTotal">
                                        <%
                                            ArrayList<Seancetype> listUu = new ctrlProgram().getAllSeanceType();
                                            for (Seancetype u : listUu) {
                                                        /*
                                                        Pour valider ou passer en attente
                                                         */

                                                    out.print("<tr style=\"background-color:#fedee5\" nameSession='" + u.getLibellest() + " (" + u.getDescriptionst() + ")' idSession='" + u.getCodest() + "' nbSession=0>");

                                                out.print("<th scope=\"row\">");
                                                out.print(u.getLibellest());
                                                out.print("</th>");
                                                out.print("<td>");
                                                out.print("<button id='btnAddChoixSession' class='btn btn-success btn-outline' onclick=\"addChoixSessionPerso(this)\" >+</button>");
                                                out.print("  <button id='btnDeleteChoixSession' class='btn btn-warning btn-outline' onclick=\"deleteChoixSession(this)\" >-</button>");
                                                out.print("</td>");
                                                out.print("<td>" + u.getCategorieCat() + "</td>");
                                                out.print("<td>" + u.getDescriptionst() + "</td>");
                                                out.print("</tr>");
                                            }
                                        %>
                                        </tbody>
                                    </table>

                                </div>

                                <div class="row" style="margin-top: 10px;margin-bottom: 30px;margin-left: 5px" >
                                    <button class="btn btn-success" onclick="addBilanPerso()">+</button>
                                    <h3 class="center">Bilan</h3>
                                    <button class="btn btn-warning" onclick="deleteBilan()">-</button>
                                </div>

                                <div class="nestable">
                                    <div class="dd" id="nestable">
                                        <ol class="dd-list" id="listSession">
                                        <%
                                            ArrayList<String[]> list=new dbProgramPerso().getAllSeances(p.getCodepp());
                                            for (int i=0;i<list.size();i++){
                                                String[] seance=list.get(i);
                                                out.print(" <li class=\"dd-item dd-item\"  typeSession='perso' isBilan='"+seance[7]+"' idsession=\"" + seance[1] + "\">");

                                                if(i == 0 || i == (list.size()-1)){
                                                    out.print("  <div class=\"dd3-handle\" style=\"background-color:#d6d8d9\"></div>");
                                                }else{
                                                    out.print("<div class=\"dd-handle dd3-handle\" style=\"background-color:#ffeacd\"></div>");
                                                }

                                                if(seance[7].equals("bilan")){
                                                    out.print(" <div class=\"dd3-content\" style=\"background-color:#d1ecf1\"> Bilan");
                                                }else{
                                                    out.print(" <div class=\"dd3-content\">" + seance[2] + "(" + seance[3] + ")");
                                                }

                                                if(i != 0 && i != (list.size()-1)){
                                                    out.print("<button class=\"btn-danger\" style=\"float: right\" onclick=\"deleteSeancePerso(this,"+seance[1]+",'"+seance[7]+"')\">X</button>");
                                                }
                                                out.print("</div></li>");
                                            }
                                        %>
                                        </ol>
                                    </div>
                                </div>






                            </div>
                    </div>
                    <div class="card-body">
                        <div id="errorMessage"></div>


                        <button type="button" class="btn btn-danger btn-rounded button-sweet-success m-b-10 m-l-5" onclick="confirmProfilProgramPerso('<%=type%>','<%=p.getCodepp()%>','<%=codeUser%>')">
                            Modifier
                        </button>




                    </div>
                </div>
                <!-- End PAge Content -->
            </div>
            <!-- footer -->
            <%@ include file="/content/templete/footer.jsp" %>
        </div>
    </div>
    <!-- All Jquery -->
    <%@ include file="/content/templete/libJquery.jsp" %>
    <script src="/js/lib/sweetalert/sweetalert.min.js"></script>
    <!-- scripit init-->
    <script src="/js/lib/sweetalert/sweetalert.init.js"></script>


</body>

</html>
