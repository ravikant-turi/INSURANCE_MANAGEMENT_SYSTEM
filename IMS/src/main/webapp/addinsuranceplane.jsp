<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<f:view>
<html>
<head>
    <title>Add Insurance Plan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #004080;
            text-align: center;
        }

        .form-container {
            width: 50%;
            margin: auto;
            background-color: #ffffff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .panel-grid {
            width: 100%;
        }

        .panel-grid td {
            padding: 10px;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 8px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .submit-button {
            text-align: center;
            margin-top: 20px;
        }

        .submit-button input {
            background-color: #007bff;
            color: white;
            padding: 10px 30px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
        }

        .submit-button input:hover {
            background-color: #0056b3;
        }

        .message {
            text-align: center;
            color: green;
            font-weight: bold;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <h:form>
        <div class="form-container">
            <h2>Add Insurance Plan</h2>

            <h:panelGrid columns="2" styleClass="panel-grid">
                <h:outputText value="Plan ID:" />
                <h:inputText value="#{insurancePlanController.insurancePlan.planId}" />

                <h:outputText value="Company ID:" />
                <h:inputText value="#{insurancePlanController.searchCompanyId}" />

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

            <div class="submit-button">
                <h:commandButton value="Add Plan" action="#{insurancePlanController.addPlan}" />
            </div>

            <h:outputText value="#{insurancePlanController.message}" styleClass="message" />
        </div>
    </h:form>
</body>
</html>
</f:view>
