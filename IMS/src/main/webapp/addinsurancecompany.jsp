<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<html>
<head>
<title>Add Insurance Company</title>
</head>
<body>

	<h:form id="companyForm">

		<h3>Add New Insurance Company</h3>




      Company Name:<br />
		<h:inputText id="name" value="#{companyController.company.name}" />
		<br />
		<h:message for="name" style="color:red" />
		<br />
		<br />

      Contact Email:<br />
		<h:inputText id="email"
			value="#{companyController.company.contactEmail}" />
		<br />
		<h:message for="email" style="color:red" />
		<br />
		<br />

      Contact Phone:<br />
		<h:inputText id="phone"
			value="#{companyController.company.contactPhone}" />
		<br />
		<h:message for="phone" style="color:red" />
		<br />
		<br />

      Head Office / City:<br />
		<h:inputText id="office"
			value="#{companyController.company.headOffice}" />
		<br />
		<h:message for="office" style="color:red" />
		<br />
		<br />

      Logo URL (optional):<br />
		<h:inputText id="logo" value="#{companyController.company.logoUrl}" />
		<br />
		<br />

		<h:commandButton value="Add Company"
			action="#{companyController.addCompany}" />
		<br />
		<br />

		<h:messages globalOnly="true" style="color:green" />

	</h:form>

</body>
	</html>
</f:view>
