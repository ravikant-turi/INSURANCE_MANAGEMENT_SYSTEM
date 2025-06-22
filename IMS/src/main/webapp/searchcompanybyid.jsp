<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
<html>
<head>
    <title>Search Insurance Company</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f2ff; /* Light blue background */
            padding: 30px;
        }

        #searchForm {
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 25px;
            width: 400px;
            margin: auto;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            color: #003366;
        }

        label, input, .output-label {
            display: block;
            margin: 10px 0 5px 0;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .output-label {
            font-weight: bold;
            margin-top: 15px;
        }

        .output-value {
            margin-bottom: 10px;
            display: block;
        }

        .search-button {
            background-color: #3399ff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .search-button:hover {
            background-color: #267acc;
        }

        .error-message {
            color: red;
        }

        .success-message {
            color: green;
        }
    </style>
</head>
<body>

<h:form id="searchForm">

    <h3>Search Insurance Company</h3>

    <label for="searchId">Enter Company ID:</label>
    <h:inputText id="searchId" value="#{companyController.searchcompanyid}" />
    <h:message for="searchId" styleClass="error-message" />

    <br /><br />

    <!-- Styled button -->
    <h:commandButton value="Search Company" action="#{companyController.findCompanyById}" styleClass="search-button" />
    
    <br /><br />
    
    <h:messages globalOnly="true" styleClass="success-message" />

    <h:outputText value="Company Name: #{companyController.company.name}" 
                  rendered="#{not empty companyController.company.name}"
                  styleClass="output-value output-label" />
    <h:outputText value="Email: #{companyController.company.contactEmail}" 
                  rendered="#{not empty companyController.company.name}"
                  styleClass="output-value" />
    <h:outputText value="Phone: #{companyController.company.contactPhone}" 
                  rendered="#{not empty companyController.company.name}"
                  styleClass="output-value" />
    <h:outputText value="Head Office: #{companyController.company.headOffice}" 
                  rendered="#{not empty companyController.company.name}"
                  styleClass="output-value" />

</h:form>

</body>
</html>
</f:view>
