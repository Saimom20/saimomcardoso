<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html
xmlns="http://www.w3.org/1999/xhtml"
xmlns:h="http://java.sun.com/jsf/html"
xmlns:f="http://java.sun.com/jsf/core"
xmlns:p="http://primefaces.org/ui"
xmlns:ui="http://java.sun.com/jsf/facelets"
>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Exercicio em Java-WEB</title>
</head>
<h:body>

<div style="background-color: #201b2c;">
<p:layout>

    <p:layoutUnit position="north">
       	<div style="background-color: #201b2c; padding-top: 5px">
       	<p align="center" style="font-size: 29px; color: white;">Exercicio Java Web</p>
       	</div>
    </p:layoutUnit>
 	<div align="center">
 	
 	    <p:layoutUnit position="center" >
		<form action="index.jsp" method="get">
		<div align="center" style="
		font-family: ui-sans-serif;
		color: white;
		font-size: 22px;
		padding-top: 25px;
		padding-bottom: 25px;
		border: solid 	;
		">
				<p style="font-weight: bold;">* ATENÇÃO | Coloque o valor em Watts(W)</p>
				Qual o seu nome:<input type="text" name="nome"/>
	        	<br></br>
	        	Valor da maquina no 1 mês: <input type="text" name="mes1" value="0"/>
	        	<br></br>
	        	Valor da maquina no 2 mês: <input type="text" name="mes2" value="0"/>
	        	<br></br>
	        	Valor da maquina no 3 mês: <input type="text" name="mes3" value="0"/>
	        	<br></br>
	        	Valor da maquina no 4 mês: <input type="text" name="mes4" value="0"/>
	        	<br></br>
	        	Valor da maquina no 5 mês: <input type="text" name="mes5" value="0"/>
	        	<br></br>
	        	Valor da maquina no 6 mês: <input type="text" name="mes6" value="0"/>
	        	<br></br>
	        	Valor da maquina no 7 mês: <input type="text" name="mes7" value="0"/>
	        	<br></br>
	        	Valor da maquina no 8 mês: <input type="text" name="mes8" value="0"/>
	        	<br></br>
	        	Valor da maquina no 9 mês: <input type="text" name="mes9" value="0"/>
	        	<br></br>
	        	Valor da maquina no 10 mês: <input type="text" name="mes10" value="0"/>
	        	<br></br>
	        	Valor da maquina no 11 mês: <input type="text" name="mes11" value="0"/>
	        	<br></br>
	        	Valor da maquina no 12 mês: <input type="text" name="mes12" value="0"/>
	        	<br></br>
	        	<input type="submit" value="Enviar"/>
	        	<br></br>
	        	<%
	        	
	        	String nome = request.getParameter("nome");
	        	
				if(request.getParameter("mes1") != null && nome != null) {
					
					//int mes1 = Integer.parseInt(request.getParameter("mes1"));
					ArrayList<Integer> consumos = new ArrayList<Integer>();
					String meses[] = {"Janeiro", "Fevereiro","Março","Abril","Maio","Junho",
					"Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
					
					int somaTotal = 0;
		        	int maior = 0;
		        	int menor = 0;
					String menorMes = "";
					String maiorMes = "";
		        	for(int i = 1; i < 12; i++) {
			        	int tmp = Integer.parseInt(request.getParameter("mes"+i));
			        	consumos.add(tmp);
			        	somaTotal += tmp;
						
		        		maior = Collections.max(consumos);
		        		menor = Collections.min(consumos);
						menorMes = meses[consumos.indexOf(menor)];
			        	maiorMes = meses[consumos.indexOf(maior)];
			        	
		        	}
		        	
		        	
		        	if(nome != null) {
		        		out.print("Amém ! " + nome + " O consumo total foi: " +
		        	somaTotal + " (W) Anualmente | O menor consumo foi: " + menorMes + " ("+ menor + "W) | O maior consumo foi: " + maiorMes + " (" + maior + "W)");
		        	} else {
		        		out.print("Seus dados não foram preenchidos corretamente !");
		        	}
		        	
				}

	        	%>
	     </div>
        </form>
        </p:layoutUnit>
 	
 	</div>
</p:layout>
</div>

</h:body>
</html>