<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<f:view>
<html>
<head>
    <title>Update Insurance Plan</title>
</head>
<body>

<h:form>
    Plan ID (existing):<br/>
    <h:inputText value="#{insurancePlanController.insurancePlan.planId}" /><br/><br/>

    Plan Name:<br/>
    <h:inputText value="#{insurancePlanController.insurancePlan.planName}" /><br/><br/>

    Plan Type:<br/>
    <h:inputText value="#{insurancePlanController.insurancePlan.planType}" /><br/><br/>

    Company ID:<br/>
    <h:inputText value="#{insurancePlanController.searchCompanyId}" /><br/><br/>

    <h:commandButton value="Update Plan" action="#{insurancePlanController.updatePlan}" />
    <br/><br/>
    <h:outputText value="#{insurancePlanController.message}" />
</h:form>

</body>
</html>
</f:view>
