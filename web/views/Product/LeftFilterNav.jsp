<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--Left Filter Wrapper-->
<div class="list-filter-left-content d-none d-lg-block col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
    <!-- Collection section -->
    <div class="mb-3">
        <c:forEach items="${collections}" var="c">
            <a class="text-decoration-none text-black" href="searchController?collectionID=${c.collectionID}">
                <h6 class="text-uppercase">${c.collectionName}</h6>
            </a>
        </c:forEach>
        <a class="text-decoration-none text-black" href="premium">
            <h6 class="text-uppercase">Premium</h6>
        </a>
    </div>
    <div style="height: 1px; width: 100%; background-color: #00000030; margin-bottom: 16px;"></div>
    
    <!-- Search by price -->
    <div>
        <h6 class="text-uppercase">Giá</h6>
        <form action="product" method="post">
            <div class="wrapper">
                <div class="price-input">
                    <div class="field">
                        <fmt:formatNumber value="${sessionScope.minPrice}" pattern="#,##0.000" var="formatMin" />
                        <input type="number" class="input-min price" name="minPrice" value="${formatMin}" style="border: none;outline: none"> 
                    </div>
                    <div class="separator">-</div>
                    <div class="field">
                        <fmt:formatNumber value="${sessionScope.maxPrice}" pattern="#,##0.000" var="formatMax" />
                        <input type="text" class="input-max price" name="maxPrice" value="${formatMax}" style="border: none; outline: none">đ
                    </div>
                </div>
                <div class="slider">
                    <div class="progress"></div>
                </div>
                <div class="range-input">
                    <input type="range" class="range-min" min="0" max="10000000" value="${sessionScope.minPrice}" step="100">
                    <input type="range" class="range-max" min="0" max="10000000" value="${sessionScope.maxPrice}"
                           step="100">
                </div>
            </div>
            <input type="hidden" name="action" value="searchByPrice"/>
            <button type="submit" class="btn btn-dark mt-3">Lọc giá</button>
        </form>
    </div>
</div>