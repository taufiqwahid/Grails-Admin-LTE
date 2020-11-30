<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 25/11/20
  Time: 09.52
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>
<!-- Button trigger modal -->
<button  hidden id="modalPage" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    Launch demo modal
</button>
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle"><g:message code="modal.message.title"/></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        <g:form controller="mhsKrs" action="create">
            <div class="modal-body">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" required name="semester" id="inlineRadio1" value="ganjil">
                    <label class="form-check-label" for="inlineRadio1">Semester Ganjil</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="semester" id="inlineRadio2" value="genap">
                    <label class="form-check-label" for="inlineRadio2">Semester Genap</label>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <g:actionSubmit class="btn btn-primary" action="create" value="submit"/>
%{--                <button class="btn btn-primary" type="submit"><a class="text-white" href="${createLink(controller: 'mhsKrs', action: 'create', params: [lang:params.lang])}">Submit</a></button>--}%
            </div>
            </g:form>

        </div>
    </div>
</div>

<g:render template="/layouts/Footer"/>