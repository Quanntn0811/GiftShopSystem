<%-- 
    Document   : MainPage
    Created on : May 23, 2023, 11:40:49 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meeko.vn</title>
        <link rel="stylesheet" href="style.css" type="text/css" />
        <link rel="stylesheet" href="../css/style.css" type="text/css" />
        <link rel="stylesheet" href="../css/layout.css" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="script.js"></script>
        <script src="https://kit.fontawesome.com/8d39de38b8.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@ include file="../includes/header.jsp" %>

        <!-- Carousel wrapper -->
        <div id="carousel-starter" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carousel-starter" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carousel-starter" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carousel-starter" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner carousel-starter">
                <div class="carousel-item active">
                    <img src="https://d1hjkbq40fs2x4.cloudfront.net/2016-01-31/files/1045-2.jpg" class="custom-img"
                         alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://baothainguyen.vn/file/oldimage/baothainguyen/UserFiles/image/d2(23).jpg"
                         class="custom-img" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://source.unsplash.com/random/100x80?sig=3" class="custom-img" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carousel-starter" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carousel-starter" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!-- Carousel wrapper -->

        <div class="list-category">
            <div style="width: 2px; height: 80px; background-color: white;"></div>
            <div class="category-item">
                <img src="https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/10-37c9706f-413a-4123-b0d6-07905851440b.png?v=1648550713910"
                     alt="for-him" style="width: 48px; height: 48px;" />
                <p class="category-item-title">
                    For him
                </p>
            </div>
            <div style="width: 2px; height: 80px; background-color: white;"></div>
            <div class="category-item">
                <img src="https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/9-228daf39-c660-4d00-9cc0-b9bbdb8f0e1d.png?v=1648550696500"
                     alt="for-him" style="width: 48px; height: 48px;" />
                <p class="category-item-title">
                    For her
                </p>
            </div>
            <div style="width: 2px; height: 80px; background-color: white;"></div>
            <div class="category-item">
                <img src="https://bizweb.dktcdn.net/thumb/compact/100/450/808/collections/cuo-c-so-ng-thu-o-ng-nga-y.png?v=1648549034233"
                     alt="for-him" style="width: 48px; height: 48px;" />
                <p class="category-item-title">
                    Thư giãn
                </p>
            </div>
            <div style="width: 2px; height: 80px; background-color: white;"></div>
        </div>
        
        <!-- New product -->
        <section class="new-product container-home">
            <div class="new-product-header d-flex justify-content-center align-items-center gap-5 mt-5 mb-5">
                <div style="width: 80px; height: 1px; background-color: black;"></div>
                <h2 class="head-title">Sản phẩm mới</h2>
                <div style="width: 80px; height: 1px; background-color: black;"></div>
            </div>
            <div class="list-new-product row g-4">
                <div class="col-6 col-md-3 product-cart-wrapper">
                    <div class="position-relative">
                        <img src="https://bizweb.dktcdn.net/thumb/large/100/450/808/products/a55404c7-9b14-45ee-9e9d-a91893f5d952.jpg?v=1682419487663"
                             alt="new-prd" class="product-card-img w-100 h-auto" />
                        <div class="love-prd">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                 fill="none">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M12 5C11.6604 4.60884 11.2646 4.26729 10.8278 3.9824C9.86267 3.35284 8.69792 3 7.5 3C4.42 3 2 5.37384 2 8.3951C2 9.46861 2.25574 10.488 2.69383 11.4578C4.0526 14.4686 7.16576 17.0093 9.8455 19.1963C10.617 19.8259 11.3526 20.4262 12 21C12.6474 20.4262 13.383 19.8259 14.1545 19.1963C16.8342 17.0093 19.9473 14.4687 21.3061 11.458C21.7442 10.4881 22 9.46866 22 8.3951C22 5.37384 19.58 3 16.5 3C15.3021 3 14.1373 3.35284 13.1722 3.9824C12.7354 4.26729 12.3396 4.60884 12 5ZM12 18.3699C12.3228 18.1024 12.6527 17.8326 12.9822 17.5633C13.2612 17.3351 13.5399 17.1073 13.8136 16.8813C14.9091 15.9769 15.9814 15.058 16.9309 14.095C18.106 12.9033 18.9793 11.7563 19.4879 10.6242C19.8233 9.8767 20 9.13633 20 8.3951C20 6.51455 18.5119 5 16.5 5C15.3116 5 14.2025 5.51373 13.5103 6.31111L12 8.05084L10.4897 6.31111C9.79748 5.51373 8.68843 5 7.5 5C5.48808 5 4 6.51455 4 8.3951C4 9.13633 4.17674 9.8767 4.51214 10.6242C5.02069 11.7563 5.89402 12.9033 7.06909 14.095C8.01864 15.058 9.09095 15.9769 10.1864 16.8813C10.4601 17.1073 10.7388 17.3351 11.0178 17.5633C11.3473 17.8326 11.6772 18.1024 12 18.3699Z"
                                  fill="#333333"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="action-prd-cart">
                        <i class="fa-solid fa-cart-plus fa-lg"></i>
                    </div>

                    <div class="prd-name">
                        BÉ LỪA BÔNG WINNIE
                    </div>
                    <div class="prd-description">
                        * Thông tin chi tiết bé Lừa bông: - Chất liệu: Lông xù siêu mềm mịn.
                    </div>
                    <div class="prd-price">
                        390000₫
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Hot product -->
        <section class="hot-product container-home">
            <div class="hot-product-header d-flex justify-content-center align-items-center gap-5 mt-5 mb-5">
                <div style="width: 80px; height: 1px; background-color: black;"></div>
                <h2 class="head-title">Top sản phẩm bán chạy</h2>
                <div style="width: 80px; height: 1px; background-color: black;"></div>
            </div>
            <div class="list-hot-product row g-4">
                <div class="col-6 col-md-3 product-cart-wrapper">
                    <div class="position-relative">
                        <img src="https://bizweb.dktcdn.net/thumb/large/100/450/808/products/a55404c7-9b14-45ee-9e9d-a91893f5d952.jpg?v=1682419487663"
                             alt="new-prd" class="product-card-img w-100 h-auto" />
                        <div class="love-prd">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                 fill="none">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M12 5C11.6604 4.60884 11.2646 4.26729 10.8278 3.9824C9.86267 3.35284 8.69792 3 7.5 3C4.42 3 2 5.37384 2 8.3951C2 9.46861 2.25574 10.488 2.69383 11.4578C4.0526 14.4686 7.16576 17.0093 9.8455 19.1963C10.617 19.8259 11.3526 20.4262 12 21C12.6474 20.4262 13.383 19.8259 14.1545 19.1963C16.8342 17.0093 19.9473 14.4687 21.3061 11.458C21.7442 10.4881 22 9.46866 22 8.3951C22 5.37384 19.58 3 16.5 3C15.3021 3 14.1373 3.35284 13.1722 3.9824C12.7354 4.26729 12.3396 4.60884 12 5ZM12 18.3699C12.3228 18.1024 12.6527 17.8326 12.9822 17.5633C13.2612 17.3351 13.5399 17.1073 13.8136 16.8813C14.9091 15.9769 15.9814 15.058 16.9309 14.095C18.106 12.9033 18.9793 11.7563 19.4879 10.6242C19.8233 9.8767 20 9.13633 20 8.3951C20 6.51455 18.5119 5 16.5 5C15.3116 5 14.2025 5.51373 13.5103 6.31111L12 8.05084L10.4897 6.31111C9.79748 5.51373 8.68843 5 7.5 5C5.48808 5 4 6.51455 4 8.3951C4 9.13633 4.17674 9.8767 4.51214 10.6242C5.02069 11.7563 5.89402 12.9033 7.06909 14.095C8.01864 15.058 9.09095 15.9769 10.1864 16.8813C10.4601 17.1073 10.7388 17.3351 11.0178 17.5633C11.3473 17.8326 11.6772 18.1024 12 18.3699Z"
                                  fill="#333333"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="action-prd-cart">
                        <i class="fa-solid fa-cart-plus fa-lg"></i>
                    </div>

                    <div class="prd-name">
                        BÉ LỪA BÔNG WINNIE
                    </div>
                    <div class="prd-description">
                        * Thông tin chi tiết bé Lừa bông: - Chất liệu: Lông xù siêu mềm mịn.
                    </div>
                    <div class="prd-price">
                        390000₫
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Only in meeko -->
        <section class="only-in-meeko container-home">
            <div class="only-in-meeko-header d-flex align-items-center gap-5 mt-5 mb-3">
                <h2 class="head-title"> Chỉ có tại Meeko</h2>
                <div style="width: 100%; height: 1px; background-color: black;"></div>
            </div>
            <div class="list-product-only-in-meeko row">
                <div class="col-12 col-sm-6 col-md-4">
                    <img src="https://bizweb.dktcdn.net/100/450/808/themes/855625/assets/banneronly_1.jpg?1681832246171"
                         alt="only-in-meeko" class="w-100 d-block img-prd-only" />
                </div>
                <div class="col-12 col-sm-6 col-md-4">
                    <img src="https://bizweb.dktcdn.net/100/450/808/themes/855625/assets/banneronly_2.jpg?1681832246171"
                         alt="only-in-meeko" class="w-100 d-block img-prd-only" />
                </div>
                <div class="col-12 col-sm-6 col-md-4">
                    <img src="https://bizweb.dktcdn.net/100/450/808/themes/855625/assets/banneronly_3.jpg?1681832246171"
                         alt="only-in-meeko" class="w-100 d-block img-prd-only" />
                </div>
            </div>
        </section>
        
        <!-- Blog -->
        <section></section>

        <%-- <%@ include file="new/AbsoluteBtn.jsp" %> --%>

        <%@ include file="../includes/footer.jsp" %>
       
    </body>
</html>