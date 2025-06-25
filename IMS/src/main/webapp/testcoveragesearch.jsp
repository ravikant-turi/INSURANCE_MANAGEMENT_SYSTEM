<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
<head>
<title>Search Insurance Coverage Option</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f4f4f4;
	padding: 20px;
}

.container {
	background: white;
	padding: 20px;
	border-radius: 10px;
	max-width: 700px;
	margin: auto;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 15px;
}

label {
	font-weight: bold;
}

.btn {
	background: #007bff;
	color: white;
	border: none;
	padding: 8px 14px;
	border-radius: 5px;
	cursor: pointer;
}

.btn:hover {
	background: #0056b3;
}

.section-title {
	margin-top: 30px;
	font-size: 18px;
	border-bottom: 1px solid #ccc;
	padding-bottom: 5px;
}

.row {
	display: flex;
	justify-content: space-between;
	padding: 5px 0;
}

.label {
	font-weight: bold;
	color: #333;
}

.value {
	color: #555;
}
</style>
</head>
<body>

	<div class="container">
		<h:form>
			<h2>Search Insurance Coverage Option</h2>

			<div class="form-group">
				<label>Enter Coverage ID to Search:</label><br />
				<h:inputText
					value="#{insuranceCoverageOptionController.searchCoverageId}"
					style="width:100%;" />
			</div>

			<h:commandButton value="Search"
				action="#{insuranceCoverageOptionController.searchInsuranceCoverageOption}"
				styleClass="btn" />
			<br />
			<br />

			<h:messages style="color:red;" />

			<h:panelGroup
				rendered="#{not empty insuranceCoverageOptionController.coverageOption}">
				<div class="section-title">Coverage Option Details</div>
				<div class="row">
					<span class="label">Coverage ID:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.coverageId}" /></span>
				</div>
				<div class="row">
					<span class="label">Premium Amount:</span> <span class="value"><h:outputText
							value="₹#{insuranceCoverageOptionController.coverageOption.premiumAmount}" /></span>
				</div>
				<div class="row">
					<span class="label">Coverage Amount:</span> <span class="value"><h:outputText
							value="₹#{insuranceCoverageOptionController.coverageOption.coverageAmount}" /></span>
				</div>
				<div class="row">
					<span class="label">Status:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.status}" /></span>
				</div>

				<div class="section-title">Plan Details</div>
				<div class="row">
					<span class="label">Plan ID:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.planId}" /></span>
				</div>
				<div class="row">
					<span class="label">Plan Name:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.planName}" /></span>
				</div>
				<div class="row">
					<span class="label">Plan Type:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.planType}" /></span>
				</div>
				<div class="row">
					<span class="label">Min Age:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.minEntryAge}" /></span>
				</div>
				<div class="row">
					<span class="label">Max Age:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.maxEntryAge}" /></span>
				</div>
				<div class="row">
					<span class="label">Cover Amounts:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.availableCoverAmounts}" /></span>
				</div>
				<div class="row">
					<span class="label">Waiting Period:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.waitingPeriod}" /></span>
				</div>
				<div class="row">
					<span class="label">Created On:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.createdOn}" /></span>
				</div>
				<div class="row">
					<span class="label">Expires On:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.expireDate}" /></span>
				</div>
				<div class="row">
					<span class="label">Periodic Diseases:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.periodicDiseases}" /></span>
				</div>

				<div class="section-title">Insurance Company Details</div>
				<div class="row">
					<span class="label">Company ID:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.companyId}" /></span>
				</div>
				<div class="row">
					<span class="label">Company Name:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.name}" /></span>
				</div>
				<div class="row">
					<span class="label">Head Office:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.headOffice}" /></span>
				</div>
				<div class="row">
					<span class="label">Email:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.contactEmail}" /></span>
				</div>
				<div class="row">
					<span class="label">Phone:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.contactPhone}" /></span>
				</div>
				<div class="row">
					<span class="label">Logo URL:</span> <span class="value"><h:outputText
							value="#{insuranceCoverageOptionController.coverageOption.insurancePlan.insuranceCompany.logoUrl}" /></span>
				</div>
			</h:panelGroup>
		</h:form>
	</div>

</body>
	</html>
</f:view>
