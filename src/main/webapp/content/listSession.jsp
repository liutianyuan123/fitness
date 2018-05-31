<%@ page import="model.Seancetype" %>
<%@ page import="servlet.Program.ctrlProgram" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String profil = request.getParameter("profil");

%>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <title>Liste des Séances Types</title>
        <%@ include file="/content/templete/libHead.jsp" %>
        <script type="text/JavaScript" src="../js/ajaxExercice.js"></script>
        <script type="text/JavaScript" src="../js/ajaxCoach.js"></script>
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
                        <h3 class="text-primary">Liste des Séances Types</h3></div>
                </div>
                <!-- Container fluid  -->
                <div class="container-fluid" id="mainPage">
                    <!-- Start Page Content -->

                    <!-- End PAge Content -->

                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive m-t-40">
                                        <table id="example23"
                                               class="display nowrap table table-hover table-striped table-bordered"
                                               cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                <tr>
                                                    <th>Séance</th>
                                                    <th>Catégorie</th>
                                                    <th>Description</th>
                                                    <th></th>
                                                </tr>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                                <tr>
                                                <tr>
                                                    <th>Séance</th>
                                                    <th>Catégorie</th>
                                                    <th>Description</th>

                                                </tr>
                                                </tr>
                                            </tfoot>
                                            <tbody id="listSessionTotal">
                                                <%
                                                    ArrayList<Seancetype> listUu = new ctrlProgram().getAllSeanceType();

                                                    for (Seancetype u : listUu) {
                                                                        /*
                                                                        Pour valider ou passer en attente
                                                                         */
                                                        out.print("<tr style=\"background-color:#fedee5\" nameSession='" + u.getLibellest() + " (" + u.getDescriptionst() + ")' idSession='" + u.getCodest() + "' nbSession=0>");

                                                        out.print("<th scope=\"row\">");
                                                        out.print("<input type=\"checkbox\" name=\"user\" value=\"" + u.getCodest() + "\" hidden>");
                                                        out.print(u.getLibellest());
                                                        out.print("</th>");
                                                        out.print("<td>" + u.getCategorieCat() + "</td>");
                                                        out.print("<td>" + u.getDescriptionst() + "</td>");
                                                        out.print("<td><button type='button' onclick=\"window.location.href='modifierSeanceType.jsp?codes=" + u.getCodest() + "'\"+u.getCodest()+'\" class='btn btn-warning btn-rounded m-b-10 m-l-5'>Voir</button></td>");
                                                        out.print("</tr>");
                                                    }
                                                %>

                                            </tbody>
                                        </table>

                                        <!-- footer -->
                                        <%@ include file="/content/templete/footer.jsp" %>
                                    </div>
                                </div>
                            </div>
                            <!-- All Jquery -->
                            <%@ include file="/content/templete/libJquery.jsp" %>
                            <script src="/js/lib/datatables/datatables.min.js"></script>
                            <script src="/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
                            <script src="/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
                            <script src="/js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
                            <script src="/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
                            <script src="/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
                            <script src="/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
                            <script src="/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
                            <script src="/js/lib/datatables/datatables-init.js"></script>
                            </body>

                            </html>