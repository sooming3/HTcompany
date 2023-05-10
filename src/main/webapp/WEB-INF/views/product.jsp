<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="viviana_header.jsp" %>

<div class="product_modify_container">
    <div id="product_modify_container_main">
        <h1 class="product_modify_title">상품등록</h1>
            
        <div class="product_modify_field">
            <span class="product_modify_bold">상품코드</span> <input type="text">
        </div>
        
        <div class="product_modify_field">
            <span class="product_modify_bold">상품명</span> <input type="text">
        </div>
        
        <div class="product_modify_field">
            <span class="product_modify_bold">판매가격</span> <input type="number">
        </div>
        
        <div class="field category">
            <span class="product_modify_bold">분류</span>
            <div>
                <select>
                    <option value="ring">반지</option>
                    <option value="necklace">목걸이</option>
                    <option value="earring">귀걸이</option>
                </select>
            </div>
        </div>
        
        <div class="product_modify_field image">
            <span class="bold">상품 이미지</span> <input type="file">
        </div>
        
        <div class="product_modify_field">
            <span class="bold">상세설명</span> <textarea cols="50" rows="10"></textarea>
        </div>
        
        <input type="submit" value="등록" id="product_modify_detail-save">
    </div>
</div>

