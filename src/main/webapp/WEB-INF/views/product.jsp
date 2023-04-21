<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="viviana_header.jsp" %>

<div class="container">
    <div id="main">
        <h1 class="title">상품등록</h1>
            
        <div class="field">
            <span class="bold">상품코드</span> <input type="text">
        </div>
        
        <div class="field">
            <span class="bold">상품명</span> <input type="text">
        </div>
        
        <div class="field">
            <span class="bold">판매가격</span> <input type="number">
        </div>
        
        <div class="field category">
            <span class="bold">분류</span>
            <div>
                <select>
                    <option value="ring">반지</option>
                    <option value="necklace">목걸이</option>
                    <option value="earring">귀걸이</option>
                </select>
            </div>
        </div>
        
        <div class="field image">
            <span class="bold">상품 이미지</span> <input type="file">
        </div>
        
        <div class="field">
            <span class="bold">상세설명</span> <textarea cols="50" rows="10"></textarea>
        </div>
        
        <input type="submit" value="등록" id="detail-save">
    </div>
</div>

