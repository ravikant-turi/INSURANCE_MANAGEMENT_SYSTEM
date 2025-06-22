<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<f:view>
<html>
<head>
    <title>All Insurance Plans</title>
</head>
<body>
    <h:form>

        <h2>All Insurance Plans</h2>

        <h:commandButton value="Show All Plans" action="#{insurancePlanController.showAllPlans}" />

        <br/><br/>

        <h:dataTable value="#{insurancePlanController.allPlans}" var="plan" border="1" cellpadding="4" cellspacing="0">

            <h:column>
                <h:outputText value="Plan ID: " /> <br/>
                <h:outputText value="#{plan.planId}" />
            </h:column>

            <h:column>
                <h:outputText value="Company ID: " />
                <h:outputText value="#{plan.insuranceCompany.companyId}" />
            </h:column>

            <h:column>
                <h:outputText value="Plan Name: " />
                <h:outputText value="#{plan.planName}" />
            </h:column>

            <h:column>
                <h:outputText value="Plan Type: " />
                <h:outputText value="#{plan.planType}" />
            </h:column>

            <h:column>
                <h:outputText value="Min Age: " />
                <h:outputText value="#{plan.minEntryAge}" />
            </h:column>

            <h:column>
                <h:outputText value="Max Age: " />
                <h:outputText value="#{plan.maxEntryAge}" />
            </h:column>

            <h:column>
                <h:outputText value="Description: " />
                <h:outputText value="#{plan.description}" />
            </h:column>

            <h:column>
                <h:outputText value="Cover Amounts: " />
                <h:outputText value="#{plan.availableCoverAmounts}" />
            </h:column>

            <h:column>
                <h:outputText value="Waiting Period: " />
                <h:outputText value="#{plan.waitingPeriod}" />
            </h:column>

            <h:column>
                <h:outputText value="Created On: " />
                <h:outputText value="#{plan.createdOn}" />
            </h:column>

            <h:column>
                <h:outputText value="Expire Date: " />
                <h:outputText value="#{plan.expireDate}" />
            </h:column>

            <h:column>
                <h:outputText value="Periodic Diseases: " />
                <h:outputText value="#{plan.periodicDiseases}" />
            </h:column>

        </h:dataTable>

        <br/>
        <h:outputText value="#{insurancePlanController.message}" />

    </h:form>
</body>
</html>
</f:view>
