<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<f:view>
<html>
<head>
    <title>Insurance Plan Management</title>
</head>
<body>
    <h:form>

        <h2>Add / Update Insurance Plan</h2>
        <h:panelGrid columns="2">
            <h:outputText value="Plan ID:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.planId}" />

            <h:outputText value="Plan Name:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.planName}" />

            <h:outputText value="Plan Type:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.planType}" />

            <h:outputText value="Min Entry Age:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.minEntryAge}" />

            <h:outputText value="Max Entry Age:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.maxEntryAge}" />

            <h:outputText value="Description:" />
            <h:inputTextarea value="#{insurancePlanController.insurancePlan.description}" rows="3" cols="20" />

            <h:outputText value="Available Cover Amounts:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.availableCoverAmounts}" />

            <h:outputText value="Waiting Period:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.waitingPeriod}" />

            <h:outputText value="Periodic Diseases:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.periodicDiseases}" />
        </h:panelGrid>

        <h:commandButton value="Add Plan" action="#{insurancePlanController.addPlan}" />
        <h:commandButton value="Update Plan" action="#{insurancePlanController.updatePlan}" />

        <hr/>

        <h2>Search Insurance Plan</h2>
        <h:panelGrid columns="2">
            <h:outputText value="Enter Plan ID:" />
            <h:inputText value="#{insurancePlanController.insurancePlan.planId}" />
        </h:panelGrid>
        <h:commandButton value="Search Plan" action="#{insurancePlanController.searchPlanById(insurancePlanController.insurancePlan.planId)}" />

        <hr/>

        <h2>Show All Plans</h2>
        <h:commandButton value="Show All Plans" action="#{insurancePlanController.showAllPlans}" />

        <h:dataTable value="#{insurancePlanController.allPlans}" var="plan" border="1">
            <h:column><f:facet name="header">Plan ID</f:facet>#{plan.planId}</h:column>
            <h:column><f:facet name="header">Name</f:facet>#{plan.planName}</h:column>
            <h:column><f:facet name="header">Type</f:facet>#{plan.planType}</h:column>
            <h:column><f:facet name="header">Cover</f:facet>#{plan.availableCoverAmounts}</h:column>
            <h:column><f:facet name="header">Delete</f:facet>
                <h:commandLink value="Delete" action="#{insurancePlanController.deletePlan(plan.planId)}" />
            </h:column>
        </h:dataTable>

        <hr/>
        <h:outputText value="Message: #{insurancePlanController.message}" style="color:blue;"/>

    </h:form>
</body>
</html>
</f:view>
