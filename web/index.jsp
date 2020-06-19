<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.Serializable" %><%--
  Created by IntelliJ IDEA.
  User: toanv
  Date: 19/06/2020
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    class Customer {
        public String name;
        public String birth_day;
        public String address;
        public String image;

        Customer(String name, String birth_day, String address, String image){
            this.name = name;
            this.birth_day = birth_day;
            this.address = address;
            this.image = image;
        }
    }

    List<Customer> listCustomer = new ArrayList<Customer>();

    listCustomer.add(new Customer("Xuân Diệu", "20-02-2001", "Vĩnh Phúc", "images/xuan-dieu.jpg"));
    listCustomer.add(new Customer("Huy Cận", "12-08-2005", "Vĩnh Phúc", "images/huy-can.jpg"));

    request.setAttribute("listCustomer", listCustomer);
%>

<html>
<head>
    <meta charset="UTF-8" />
    <title>List customer</title>
    <style>
        html, body {
            background: #f6f6f6;
            padding: 0;
            margin:  0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
        }
        .white {
            background: white;
        }
        .title {
            padding: 15px;
            text-align: center;
        }
        table {
            padding: 15px;
            text-align: center;
            border-collapse: collapse;
            width: 100%;
            padding: 0;
            margin: 0;
        }
        thead {
            padding: 15px;
            background: #f1f1f1;
        }
        th, td {
            padding: 10px;
        }
        tr + tr {
            border-top: 1px solid #ddd;
        }
        table img {
            max-width: 80px;
            max-height: 80px;
        }
    </style>
</head>
<body>
<div class="container">
    <h3 class="title white">Danh sách khách hàng</h3>
    <table class="white">
        <thead>
            <tr>
                <th>Họ và Tên</th>
                <th>Ngày sinh</th>
                <th>Địa chỉ</th>
                <th>Ảnh</th>
            </tr>
        </thead>
        <tbody>
            <%
                int count = listCustomer.size();
            %>

            <%
                for (int i = 0; i<count; i++) {
                    Customer customer = listCustomer.get(i);
            %>

            <tr>
                <td><%=customer.name%></td>
                <td><%=customer.birth_day%></td>
                <td><%=customer.address%></td>
                <td><img src="<%=customer.image%>" alt="<%=customer.name%>" /></td>
            </tr>

            <%
                }
            %>
        </tbody>
    </table>
</div>
</body>
</html>
