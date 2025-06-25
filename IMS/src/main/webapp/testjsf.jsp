<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<f:view>
	<!DOCTYPE html>
	<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="plan-card"
		style="display: flex; flex-direction: column; border: 1px solid #ccc; padding: 10px; border-radius: 8px; width: 400px;">

		<div class="plan-header" style="font-weight: bold; font-size: 18px;">Care
			Classic</div>

		<div class="plan-features" style="margin-top: 10px;">
			<ul>
				<li>471 Cashless hospitals</li>
				<li>Unlimited claims every year up to the cover amount</li>
				<li>Single Pvt AC Room</li>
				<li>₹2.5 lakh No Claim Bonus</li>
				<li>Unlimited Restoration of cover</li>
			</ul>
		</div>

		<div class="plan-cover-premium"
			style="display: flex; justify-content: space-between; margin-top: 10px;">
			<div>Cover amount: ₹10 Lakh</div>
			<div>Premium: ₹2582/month</div>
		</div>

		<h:commandButton value="Customize plan"
			action="#{planController.customize}"
			style="background-color: orange; color: white; border: none; padding: 10px; border-radius: 5px; margin-top: 10px;" />

	</div>

</body>
	</html>
</f:view>