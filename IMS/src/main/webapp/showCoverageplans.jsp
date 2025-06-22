<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<f:view>
	<!DOCTYPE html>
	<html>
<head>
<meta charset="UTF-8">
<title>Show All Insurance Coverage Options</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
            padding: 6px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>

<h:form>
    <h:commandButton value="Show All Coverage Option" 
                     action="#{insuranceCoverageOptionController.showAllInsurance}" />
    <br/><br/>

    <h:dataTable value="#{insuranceCoverageOptionController.coverageList}" 
                 var="item" 
                 cellpadding="5" 
                 cellspacing="0" 
                 styleClass="dataTable">

        <!-- CoverageOption Fields -->
        <h:column>
            <f:facet name="header">Coverage ID</f:facet>
            <h:outputText value="#{item.coverageId}" />
        </h:column>

        <h:column>
            <f:facet name="header">Premium Amount</f:facet>
            <h:outputText value="#{item.premiumAmount}" />
        </h:column>

        <h:column>
            <f:facet name="header">Coverage Amount</f:facet>
            <h:outputText value="#{item.coverageAmount}" />
        </h:column>

        <h:column>
            <f:facet name="header">Status</f:facet>
            <h:outputText value="#{item.status}" />
        </h:column>

        <!-- InsurancePlan Fields -->
        <h:column>
            <f:facet name="header">Plan ID</f:facet>
            <h:outputText value="#{item.insurancePlan.planId}" />
        </h:column>

        <h:column>
            <f:facet name="header">Plan Name</f:facet>
            <h:outputText value="#{item.insurancePlan.planName}" />
        </h:column>

        <h:column>
            <f:facet name="header">Plan Type</f:facet>
            <h:outputText value="#{item.insurancePlan.planType}" />
        </h:column>

        <h:column>
            <f:facet name="header">Min Entry Age</f:facet>
            <h:outputText value="#{item.insurancePlan.minEntryAge}" />
        </h:column>

        <h:column>
            <f:facet name="header">Max Entry Age</f:facet>
            <h:outputText value="#{item.insurancePlan.maxEntryAge}" />
        </h:column>

        <h:column>
            <f:facet name="header">Description</f:facet>
            <h:outputText value="#{item.insurancePlan.description}" />
        </h:column>

        <h:column>
            <f:facet name="header">Available Cover Amounts</f:facet>
            <h:outputText value="#{item.insurancePlan.availableCoverAmounts}" />
        </h:column>

        <h:column>
            <f:facet name="header">Waiting Period</f:facet>
            <h:outputText value="#{item.insurancePlan.waitingPeriod}" />
        </h:column>

        <h:column>
            <f:facet name="header">Created On</f:facet>
            <h:outputText value="#{item.insurancePlan.createdOn}" />
        </h:column>

        <h:column>
            <f:facet name="header">Expire Date</f:facet>
            <h:outputText value="#{item.insurancePlan.expireDate}" />
        </h:column>

        <h:column>
            <f:facet name="header">Periodic Diseases</f:facet>
            <h:outputText value="#{item.insurancePlan.periodicDiseases}" />
        </h:column>

        <!-- InsuranceCompany Fields -->
        <h:column>
            <f:facet name="header">Company ID</f:facet>
            <h:outputText value="#{item.insurancePlan.insuranceCompany.companyId}" />
        </h:column>

        <h:column>
            <f:facet name="header">Company Name</f:facet>
            <h:outputText value="#{item.insurancePlan.insuranceCompany.name}" />
        </h:column>

        <h:column>
            <f:facet name="header">Logo URL</f:facet>
            <h:outputText value="#{item.insurancePlan.insuranceCompany.logoUrl}" />
        </h:column>

        <h:column>
            <f:facet name="header">Head Office</f:facet>
            <h:outputText value="#{item.insurancePlan.insuranceCompany.headOffice}" />
        </h:column>

        <h:column>
            <f:facet name="header">Contact Email</f:facet>
            <h:outputText value="#{item.insurancePlan.insuranceCompany.contactEmail}" />
        </h:column>

        <h:column>
            <f:facet name="header">Contact Phone</f:facet>
            <h:outputText value="#{item.insurancePlan.insuranceCompany.contactPhone}" />
        </h:column>

    </h:dataTable>

</h:form>
</body>
	</html>
</f:view>