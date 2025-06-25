<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
<head>
<title>Search Insurance Coverage Option</title>
</head>
<body>

	<h:form>
		<h2>Search Insurance Coverage Option</h2>

		<h:outputLabel value="Enter Coverage ID to Search:" />
		<br />
		<h:inputText
			value="#{insuranceCoverageOptionController.searchCoverageId}" />
		<br />
		<br />

		<h:commandButton value="Search"
			action="#{insuranceCoverageOptionController.searchInsuranceCoverageOption}" />
		<br />
		<br />

		<!-- Show JSF validation or error messages -->
		<h:messages style="color:red" />

		<!-- Display Result Fields -->
		<h:panelGroup
			rendered="#{not empty insuranceCoverageOptionController.coverageOption}">

			<h3>Coverage Option Details</h3>
			<h:outputText
				value="Coverage ID: #{insuranceCoverageOptionController.coverageOption.coverageId}" />
			<br />
			<h:outputText
				value="Premium Amount: ₹#{insuranceCoverageOptionController.coverageOption.premiumAmount}" />
			<br />
			<h:outputText
				value="Coverage Amount: ₹#{insuranceCoverageOptionController.coverageOption.coverageAmount}" />
			<br />
			<h:outputText
				value="Status: #{insuranceCoverageOptionController.coverageOption.status}" />
			<br />
			<br />



			<h3>Plan Details</h3>
			<h:outputText
				value="Plan ID: #{insuranceCoverageOptionController.coverageOption.insurancePlan.planId}" />
			<br />
			<h:outputText
				value="Plan Name: #{insuranceCoverageOptionController.coverageOption.insurancePlan.planName}" />
			<br />
			<h:outputText
				value="Plan Type: #{insuranceCoverageOptionController.coverageOption.insurancePlan.planType}" />
			<br />
			<h:outputText
				value="Min Age: #{insuranceCoverageOptionController.coverageOption.insurancePlan.minEntryAge}" />
			<br />
			<h:outputText
				value="Max Age: #{insuranceCoverageOptionController.coverageOption.insurancePlan.maxEntryAge}" />
			<br />
			<h:outputText
				value="Cover Amounts: #{insuranceCoverageOptionController.coverageOption.insurancePlan.availableCoverAmounts}" />
			<br />
			<h:outputText
				value="Waiting Period: #{insuranceCoverageOptionController.coverageOption.insurancePlan.waitingPeriod}" />
			<br />
			<h:outputText
				value="Created On: #{insuranceCoverageOptionController.coverageOption.insurancePlan.createdOn}" />
			<br />
			<h:outputText
				value="Expires On: #{insuranceCoverageOptionController.coverageOption.insurancePlan.expireDate}" />
			<br />
			<h:outputText
				value="Periodic Diseases: #{insuranceCoverageOptionController.coverageOption.insurancePlan.periodicDiseases}" />
			<br />
			<br />



			<h3>Insurance Company Details</h3>
			<h:outputText
				value="Company ID: #{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.companyId}" />
			<br />
			<h:outputText
				value="Company Name: #{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.name}" />
			<br />
			<h:outputText
				value="Head Office: #{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.headOffice}" />
			<br />
			<h:outputText
				value="Email: #{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.contactEmail}" />
			<br />
			<h:outputText
				value="Phone: #{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.contactPhone}" />
			<br />
			<h:outputText
				value="Logo URL: #{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.logoUrl}" />
			<br />

		</h:panelGroup>

	</h:form>

</body>
	</html>
</f:view>
