<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<f:view>
	<!DOCTYPE html>
	<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h:form>

		<h:outputText value="Coverage ID:" />
		<br />
		<h:inputText
			value="#{insuranceCoverageOptionController.coverageOption.coverageId}" />
		<br />
		<br />

		<h:outputText value="Premium Amount:" />
		<br />
		<h:inputText
			value="#{insuranceCoverageOptionController.coverageOption.premiumAmount}" />
		<br />
		<br />

		<h:outputText value="Coverage Amount:" />
		<br />
		<h:inputText
			value="#{insuranceCoverageOptionController.coverageOption.coverageAmount}" />
		<br />
		<br />

		<h:outputText value="Status:" />
		<br />
		<h:inputText
			value="#{insuranceCoverageOptionController.coverageOption.status}" />
		<br />
		<br />

		<h:outputText value="Plan ID:" />
		<br />
		<h:inputText
			value="#{insuranceCoverageOptionController.insurancePlan.planId}" />
		<br />
		<br />

		<h:commandButton value="Add Coverage Option"
			action="#{insuranceCoverageOptionController.addInsuranceCoverageOption}" />
		<br />
		<br />

	</h:form>
</body>
	</html>
</f:view>