<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="https://kit.fontawesome.com/51772bd9bd.js" crossorigin="anonymous"></script>

<div class="container my-3 border rounded">
   <div class="mb-3 mt-3">
      <label>댓글: <span id="cmt_cnt"></span> 개
      </label>
      <form action="insertBComment.do" class="input-group my-2">
         <input type="hidden" class="form-control" id="input_cmt_num"
            name="bNum" value="1">
         <input type="hidden" class="form-control" id="input_writer"
            name="bcID">
         <input type="text" class="form-control" id="input_comment"
            name="bcContent">
         <button type="submit" class="btn btn-outline-primary"
            id="btn_comment">작성</button>
      </form>
      <table class="table table-hover mt-3" id="cmt_table">
         <thead>
            <tr>
               <th style="width: 16.66%">작성자</th>
               <th>내용</th>
               <th style="width: 16.66%">작성일</th>
            </tr>
         </thead>
         <tbody id="cmt_list">
            <c:forEach var="vo" items="${selectBs }">
               <tr>
                  <td>${vo.bcID }</td>
                  <td>${vo.bcContent }</td>
                  <td>${vo.bcDate }</td>
               </tr>
            </c:forEach>
         </tbody>
      </table>
   </div>
</div>