<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<f:view>
<html>
<head>
    <title>Search Insurance Plan</title>
</head>
<body>

<h:form>
    Enter Plan ID to Search: <br />
    <h:inputText value="#{insurancePlanController.insurancePlan.planId}" />
    <br /><br />
    <h:commandButton value="Search" action="#{insurancePlanController.searchPlanById(insurancePlanController.insurancePlan.planId)}" />
    <br /><br />

    <h:outputText value="Plan Name: #{insurancePlanController.insurancePlan.planName}" /><br/>
    <h:outputText value="Plan Type: #{insurancePlanController.insurancePlan.planType}" /><br/>
    <h:outputText value="Company ID: #{insurancePlanController.insurancePlan.insuranceCompany.companyId}" /><br/>
    <h:outputText value="Message: #{insurancePlanController.message}" />
</h:form>

</body>
</html>
</f:view>
